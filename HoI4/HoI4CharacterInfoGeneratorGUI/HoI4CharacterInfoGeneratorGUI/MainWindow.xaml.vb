Imports System.IO
Imports System.Windows.Forms
Imports System.Windows.Window

Class MainWindow
    'Path constants
    Const ModCharacterInfoDirRelativePath As String = "common\characters\"
    Const ModCountryHistoryDirRelativePath As String = "history\countries\"
    Const ModCharacterInfoCHSLocalisationDirRelativePath As String = "localisation\simp_chinese\characters\"
    'File name constants
    Const ModCharacterInfoCHSLocalisationFileName As String = "{TAG}_characters_l_simp_chinese.yml"

    'Public variable
    Dim InputCsvPath As String
    Dim OutputDiectory As String
    Dim EmptyList As New List(Of String)
    Dim MessageList As New List(Of String)
    Dim IsLogginEnabled As Boolean = True

    Private Sub CheckAndCreateDirectories(DirPath As String)
        If Not Directory.Exists(DirPath) Then
            Directory.CreateDirectory(DirPath)
        End If
    End Sub

    ''' <summary>
    ''' Replace invalid characters to "_"
    ''' </summary>
    ''' <param name="LatinName"></param>
    ''' <returns></returns>
    ''' <remarks></remarks>
    Private Function RemoveInvalidCharInHoI4CharaterInternalName(LatinName As String) As String
        Dim ValidCharacters As String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
        Dim Result As String = ""
        For Each CurrentChar In LatinName.Trim()
            If ValidCharacters.Contains(CurrentChar) Then
                Result = Result & CurrentChar
            Else
                Result = Result & "_"
            End If
        Next
        Return Result
    End Function

    ''' <summary>
    ''' Generate specified count of white spaces
    ''' </summary>
    ''' <param name="WhiteSpaceCount"></param>
    ''' <param name="Multiplier"></param>
    ''' <returns></returns>
    ''' <remarks></remarks>
    Private Function GenerateWhiteSpaces(WhiteSpaceCount As Integer, Optional Multiplier As Integer = 1) As String
        Dim Result As String = ""
        For i = 1 To (WhiteSpaceCount * Multiplier)
            Result = Result & " "
        Next
        Return Result
    End Function

    ''' <summary>
    ''' File file with specified leading pattern in its file name.
    ''' </summary>
    ''' <param name="FilePath">Path to operate on</param>
    ''' <param name="LeadingName">Leading pattern in file name</param>
    ''' <param name="FileSuffix">Suffix (extension name) of the file</param>
    ''' <returns>Full path of the file, only 1 result. Returns empty if no matching was found</returns>
    ''' <remarks></remarks>
    Private Function FindFileWithLeadingName(FilePath As String, LeadingName As String, Optional FileSuffix As String = "") As String
        Dim FileNameList As List(Of String) = Directory.EnumerateFiles(FilePath, LeadingName & "*" & FileSuffix).ToList()
        'Full path is contained in the list
        If FileNameList.Count > 0 Then
            Return FileNameList(0)
        Else
            Return ""
        End If
    End Function

    Private Sub btnBrowseInput_Click(sender As Object, e As RoutedEventArgs) Handles btnBrowseInput.Click
        Dim FileBrowser As New OpenFileDialog
        With FileBrowser
            .Title = "请指定人物描述文件的位置"
            .CheckFileExists = True
        End With
        If FileBrowser.ShowDialog() = Forms.DialogResult.OK Then
            InputCsvPath = FileBrowser.FileName
            txtInputCsv.Text = InputCsvPath
        End If
    End Sub

    Private Sub btnBrowseModBase_Click(sender As Object, e As RoutedEventArgs) Handles btnBrowseModBase.Click
        Dim FolderBrowser As New FolderBrowserDialog
        With FolderBrowser
            .Description = "请指定您的Mod文件的根路径，通常是""descriptor.mod""文件所在的路径。"
        End With
        If FolderBrowser.ShowDialog() = Forms.DialogResult.OK Then
            OutputDiectory = FolderBrowser.SelectedPath
            If OutputDiectory(OutputDiectory.Length - 1) <> "\" Then
                OutputDiectory = OutputDiectory & "\"
            End If
            txtModBaseDir.Text = OutputDiectory
        End If
    End Sub
    Sub RefreshMessageList()
        lstMessage.ItemsSource = EmptyList
        lstMessage.ItemsSource = MessageList
        DoEvents()
    End Sub
    Sub AddMessage(MessageText As String)
        MessageList.Add(MessageText)
        RefreshMessageList()
        lstMessage.SelectedIndex = lstMessage.Items.Count - 1
        lstMessage.ScrollIntoView(lstMessage.SelectedItem)
    End Sub
    Sub LockUI()
        btnBrowseInput.IsEnabled = False
        btnBrowseModBase.IsEnabled = False
        txtInputCsv.IsEnabled = False
        txtModBaseDir.IsEnabled = False
        btnStart.IsEnabled = False
        btnHelp.IsEnabled = False
    End Sub
    Sub UnlockUI()
        btnBrowseInput.IsEnabled = True
        btnBrowseModBase.IsEnabled = True
        txtInputCsv.IsEnabled = True
        txtModBaseDir.IsEnabled = True
        btnStart.IsEnabled = True
        btnHelp.IsEnabled = True
    End Sub

    Private Sub btnStart_Click(sender As Object, e As RoutedEventArgs) Handles btnStart.Click
        LockUI()

        Dim CharacterInputFilePath As String = InputCsvPath
        Dim ModBaseDir As String = OutputDiectory

        'Check if we need to add directory backslash
        If Not ModBaseDir.EndsWith("\") Then
            ModBaseDir = ModBaseDir & "\"
        End If

        'Concat path
        Dim ModCharacterInfoDir As String = ModBaseDir & ModCharacterInfoDirRelativePath
        Dim ModCountryHistoryDir As String = ModBaseDir & ModCountryHistoryDirRelativePath
        Dim ModCharacterInfoCHSLocalisationDir As String = ModBaseDir & ModCharacterInfoCHSLocalisationDirRelativePath

        'Encoding
        Dim UTF8WithBOM As System.Text.UTF8Encoding = New System.Text.UTF8Encoding(True)
        Dim UTF8WithoutBOM As System.Text.UTF8Encoding = New System.Text.UTF8Encoding(False)

        Try
            'Create basic directory structure
            CheckAndCreateDirectories(ModCharacterInfoDir)
            CheckAndCreateDirectories(ModCountryHistoryDir)
            CheckAndCreateDirectories(ModCharacterInfoCHSLocalisationDir)

            'Begin importing
            Dim CharacterInputFileStream As New StreamReader(CharacterInputFilePath)
            AddMessage("已打开人物信息文件 """ & CharacterInputFilePath & """")
            AddMessage("")
            'Enumerate every line
            'Structure:
            '    TAG,NAME_LATIN,NAME_CHS,IS_COUNTRY_LEADER,ADVISOR_SLOTS,ARMY_SLOTS,TRAITS,DESC
            '        If IS_COUNTRY_LEADER is 1, this character can be country leader
            '        ARMY_SLOTS could be "corps_commander", "field_marshal" or "navy_leader", separated by white space
            '        TRAITS will be applied to all slots in current implementation
            'Current line in input file
            Dim CurrentLineIndex As Integer = 0
            Dim CurrentLine() As String
            Const LineDataFieldCount As Integer = 8
            'Used tokens list (avoid 1 character with multiple instances)
            Dim UsedCharacterTokensCounter As New Dictionary(Of String, Integer)
            While Not CharacterInputFileStream.EndOfStream
                Dim CurrentLineRaw As String = CharacterInputFileStream.ReadLine()

                'Ignore empty lines
                If CurrentLineRaw.Trim().Length = 0 Then
                    Continue While
                End If

                'Extract components
                CurrentLine = Split(CurrentLineRaw, ",")
                CurrentLineIndex += 1
                If CurrentLine.Length <> LineDataFieldCount Then
                    AddMessage("行 " & CurrentLineIndex & "处的信息无效: 需要 " & LineDataFieldCount & " 个信息栏位，但只有 " & CurrentLine.Length)
                    AddMessage("需要的行格式: TAG, NAME_LATIN, NAME_CHS, IS_COUNTRY_LEADER, ADVISOR_SLOTS, ARMY_SLOTS, TRAITS,DESC")
                    Continue While
                End If
                Dim CurrentCharacterTag As String = CurrentLine(0).Trim().ToUpper()
                Dim CurrentCharacterNameLatin As String = CurrentLine(1).Trim()
                Dim CurrentCharacterNameCHS As String = CurrentLine(2).Trim()
                Dim CurrentCharacterIsCountryLeader As String = CurrentLine(3).Trim()
                Dim CurrentCharacterAdvisorSlots() As String = CurrentLine(4).Trim().Split(New Char() {" "}, StringSplitOptions.RemoveEmptyEntries)
                Dim CurrentCharacterArmySlots() As String = CurrentLine(5).Trim().Split(New Char() {" "}, StringSplitOptions.RemoveEmptyEntries)
                Dim CurrentCharacterTraits As String = CurrentLine(6).Trim()
                Dim CurrentCharacterDesc As String = CurrentLine(7).Trim()

                'Generate internal name
                Dim CurrentCharacterInternalName As String = CurrentCharacterTag & "_" & RemoveInvalidCharInHoI4CharaterInternalName(CurrentCharacterNameLatin)
                If UsedCharacterTokensCounter.ContainsKey(CurrentCharacterInternalName) Then
                    UsedCharacterTokensCounter(CurrentCharacterInternalName) += 1
                    CurrentCharacterInternalName = CurrentCharacterInternalName & "_" & UsedCharacterTokensCounter(CurrentCharacterInternalName)
                Else
                    UsedCharacterTokensCounter(CurrentCharacterInternalName) = 1
                End If
                Dim CurrentCharacterDescKey As String = CurrentCharacterInternalName & "_desc"

                'Debug printing
                AddMessage("当前人物: " & CurrentCharacterInternalName)

                'Append current character to character information file
                Dim CurrentCharacterInfoFilePath As String = ModCharacterInfoDir & CurrentCharacterTag & ".txt"
                If Not File.Exists(CurrentCharacterInfoFilePath) Then
                    File.Create(CurrentCharacterInfoFilePath).Close()
                End If
                'Write initial payload
                AddMessage("正在写入人物信息文件: """ & CurrentCharacterInfoFilePath & """")
                Dim CurrentCharacterInfoFileReader As New StreamReader(CurrentCharacterInfoFilePath, UTF8WithoutBOM, False)
                Dim CurrentCharacterInfoFileContent As String = CurrentCharacterInfoFileReader.ReadToEnd().Trim()
                CurrentCharacterInfoFileReader.Close()
                'Check if current file already has an ending "}"
                If CurrentCharacterInfoFileContent.EndsWith("}") Then
                    CurrentCharacterInfoFileContent = CurrentCharacterInfoFileContent.Remove(CurrentCharacterInfoFileContent.Length - 1, 1)
                Else
                    CurrentCharacterInfoFileContent = "characters = {"
                End If
                'Write back to file
                Dim CurrentCharacterInfoFileWriter As New StreamWriter(CurrentCharacterInfoFilePath, False, UTF8WithoutBOM)
                CurrentCharacterInfoFileWriter.WriteLine(CurrentCharacterInfoFileContent)
                'Begin writing current character basic info
                CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(1, 4) & "# " & CurrentCharacterNameLatin & " (" & CurrentCharacterNameCHS & ")")
                CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(1, 4) & CurrentCharacterInternalName & " = {")
                CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(2, 4) & "name = " & CurrentCharacterInternalName)
                CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(2, 4) & "portraits = {")
                CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(3, 4) & "civilian = {")
                CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(4, 4) & "large = ""gfx/leaders/" & CurrentCharacterTag & "/" & CurrentCharacterInternalName & ".dds""")
                CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(3, 4) & "}")
                CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(2, 4) & "}")
                If CurrentCharacterIsCountryLeader = "1" Then
                    CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(2, 4) & "country_leader = {")
                    CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(3, 4) & "desc = " & CurrentCharacterDescKey)
                    CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(3, 4) & "ideology = REPLACE_ME")
                    CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(3, 4) & "traits = { " & CurrentCharacterTraits & " }")
                    CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(3, 4) & "expire = ""1.1.1.1""")
                    CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(3, 4) & "id = -1")
                    CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(2, 4) & "}")
                End If
                If CurrentCharacterAdvisorSlots.Length > 0 Then
                    For Each CurrentSlot As String In CurrentCharacterAdvisorSlots
                        CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(2, 4) & "advisor = {")
                        CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(3, 4) & "idea_token = " & CurrentSlot & "_token")
                        CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(3, 4) & "slot = " & CurrentSlot)
                        CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(3, 4) & "cost = 0")
                        CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(3, 4) & "removal_cost = 0")
                        CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(3, 4) & "ledger = civilian")
                        CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(3, 4) & "can_be_fired = yes")
                        CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(3, 4) & "traits = { " & CurrentCharacterTraits & " }")
                        CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(3, 4) & "visible = { always = yes }")
                        CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(3, 4) & "available = { always = yes }")
                        CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(2, 4) & "}")
                    Next
                End If
                If CurrentCharacterArmySlots.Length > 0 Then
                    For Each CurrentSlot As String In CurrentCharacterArmySlots
                        CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(2, 4) & CurrentSlot & " = {")
                        CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(3, 4) & "skill = 1")
                        CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(3, 4) & "attack_skill = 1")
                        CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(3, 4) & "defense_skill = 1")
                        CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(3, 4) & "planning_skill = 1")
                        CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(3, 4) & "logistics_skill = 1")
                        CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(3, 4) & "maneuvering_skill = 1")
                        CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(3, 4) & "coordination_skill = 1")
                        CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(3, 4) & "traits = { " & CurrentCharacterTraits & " }")
                        CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(3, 4) & "visible = { always = yes }")
                        CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(3, 4) & "available = { always = yes }")
                        CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(2, 4) & "}")
                    Next
                End If
                CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(1, 4) & "}")
                'Close file
                CurrentCharacterInfoFileWriter.WriteLine("}")
                CurrentCharacterInfoFileWriter.Close()

                'Recruit current character in history file
                Dim CurrentCharacterHistoryFilePath As String = FindFileWithLeadingName(ModCountryHistoryDir, CurrentCharacterTag, ".txt")
                If CurrentCharacterHistoryFilePath = "" Then
                    CurrentCharacterHistoryFilePath = ModCountryHistoryDir & CurrentCharacterTag & ".txt"
                    File.Create(CurrentCharacterHistoryFilePath).Close()
                End If
                'Write initial payload
                AddMessage("正在写入国家历史文件: """ & CurrentCharacterHistoryFilePath & """")
                Dim CurrentCharacterHistoryFileWriter As New StreamWriter(CurrentCharacterHistoryFilePath, True, UTF8WithoutBOM)
                'Recruit character
                CurrentCharacterHistoryFileWriter.WriteLine("recruit_character = " & CurrentCharacterInternalName)
                'Close file
                CurrentCharacterHistoryFileWriter.Close()

                'Prepare localisation
                Dim CurrentCharacterInfoCHSLocalisationPath As String = ModCharacterInfoCHSLocalisationDir & ModCharacterInfoCHSLocalisationFileName.Replace("{TAG}", CurrentCharacterTag)
                If Not File.Exists(CurrentCharacterInfoCHSLocalisationPath) Then
                    File.Create(CurrentCharacterInfoCHSLocalisationPath).Close()
                End If
                'Write initial payload
                AddMessage("正在写入人物翻译文件: """ & CurrentCharacterInfoCHSLocalisationPath & """")
                Dim CurrentCharacterInfoCHSLocalisationReader As New StreamReader(CurrentCharacterInfoCHSLocalisationPath, UTF8WithBOM, True)
                Dim CurrentCharacterInfoCHSLocalisationContent As String = CurrentCharacterInfoCHSLocalisationReader.ReadToEnd().Trim()
                If Not CurrentCharacterInfoCHSLocalisationContent.StartsWith("l_simp_chinese:") Then
                    CurrentCharacterInfoCHSLocalisationContent = "l_simp_chinese:" & vbCrLf & CurrentCharacterInfoCHSLocalisationContent
                End If
                CurrentCharacterInfoCHSLocalisationReader.Close()
                'Write back to file
                Dim CurrentCharacterInfoCHSLocalisationWriter As New StreamWriter(CurrentCharacterInfoCHSLocalisationPath, False, UTF8WithBOM)
                CurrentCharacterInfoCHSLocalisationWriter.WriteLine(CurrentCharacterInfoCHSLocalisationContent)
                'Write localisation key
                CurrentCharacterInfoCHSLocalisationWriter.WriteLine(" # " & CurrentCharacterNameLatin & " (" & CurrentCharacterNameCHS & ")")
                CurrentCharacterInfoCHSLocalisationWriter.WriteLine(" " & CurrentCharacterInternalName & ":0 """ & CurrentCharacterNameCHS & """")
                CurrentCharacterInfoCHSLocalisationWriter.WriteLine(" " & CurrentCharacterDescKey & ":0 """ & CurrentCharacterDesc & """")
                'Close file
                CurrentCharacterInfoCHSLocalisationWriter.Close()

                AddMessage("")
            End While

            CharacterInputFileStream.Close()
        Catch ex As Exception
            AddMessage("Error " & ex.HResult & ": " & ex.Message & vbCrLf & vbCrLf & ex.StackTrace)
        End Try

        UnlockUI()

    End Sub

    Private Sub btnHelp_Click(sender As Object, e As RoutedEventArgs) Handles btnHelp.Click
        MessageBox.Show("输入文件一行表示一个人物，其格式为：" & vbCrLf & _
                        "所属Tag,英文名,中文名,是否为国家领导人,可用的顾问槽位,可用的军官槽位,特质,人物介绍" & vbCrLf & _
                        "各栏位之间使用半角逗号分隔，即使对应栏位没有信息，也请输入一个半角逗号将其留空。请不要在数据区段中加入额外的半角逗号（如果一个角色拥有多个顾问/军官槽位或特质，请使用空格分隔它们）。" & vbCrLf & _
                        "下面以引入一个名为云宝黛西的角色为例：" & vbCrLf & _
                        vbTab & "EQU,Rainbow Dash,云宝黛西,0,theorist air_chief,corps_commander,rainbow_dash_trait,闪电天马队代理队长" & vbCrLf & _
                        vbTab & "这表示该角色将被归并到名为EQU的Tag中，不能作为国家领导人，可以作为理论家、空军部长或指挥官，特质为rainbow_dash_trait，并拥有一些描述", _
                        "帮助", MessageBoxButtons.OK, MessageBoxIcon.Information)
    End Sub
End Class
