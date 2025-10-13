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
    Dim InputCsvPath As String = ""
    Dim OutputDiectory As String = ""
    Dim EmptyList As New List(Of String)
    Dim MessageList As New List(Of String)
    Dim CharacterTextList As New List(Of String)
    Dim CharacterInfoList As New List(Of HoI4CharacterInfo)
    Dim CurrentCharacterIndex As Integer = -1

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

    Private Sub LoadCharacterInfo()
        'Parse CSV file
        CharacterInfoList.Clear()
        RefreshCharacterList()
        Try
            Dim CsvReader As New StreamReader(InputCsvPath)
            While Not CsvReader.EndOfStream
                Dim CurrentLine As String = CsvReader.ReadLine()
                Dim CurrentCharacter As New HoI4CharacterInfo
                Try
                    CurrentCharacter.FromCsvInfoLine(CurrentLine)
                    CharacterInfoList.Add(CurrentCharacter)
                    RefreshCharacterList()
                Catch ex As Exception

                End Try
            End While
        Catch ex As Exception

        End Try
    End Sub

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
        LoadCharacterInfo()
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
    Sub RefreshCharacterList()
        CharacterTextList.Clear()
        For Each CurrentCharacter As HoI4CharacterInfo In CharacterInfoList
            CharacterTextList.Add(CurrentCharacter.ToListLine())
        Next
        lstCharacters.ItemsSource = EmptyList
        lstCharacters.ItemsSource = CharacterTextList
        DoEvents()
    End Sub
    Sub LockUI()
        btnBrowseInput.IsEnabled = False
        btnBrowseModBase.IsEnabled = False
        txtInputCsv.IsEnabled = False
        txtModBaseDir.IsEnabled = False
        btnStart.IsEnabled = False
        btnSaveInputCsv.IsEnabled = False
        btnSaveInputCsvCopy.IsEnabled = False
        btnHelp.IsEnabled = False
        txtCharacterTag.IsEnabled = False
        txtCharacterNameLatin.IsEnabled = False
        txtCharacterNameCHS.IsEnabled = False
        chkCharacterIsCountryLeader.IsEnabled = False
        chkPoliticalAdvisor.IsEnabled = False
        chkTheorist.IsEnabled = False
        chkArmyChief.IsEnabled = False
        chkNavyChief.IsEnabled = False
        chkAirChief.IsEnabled = False
        txtCharacterAdvisorSlots.IsEnabled = False
        txtCharacterAdvisorTraits.IsEnabled = False
        chkCorpsCommander.IsEnabled = False
        chkFieldMarshal.IsEnabled = False
        chkNavyLeader.IsEnabled = False
        txtCharacterArmySlots.IsEnabled = False
        txtCharacterArmyTraits.IsEnabled = False
        txtCharacterDesc.IsEnabled = False
        lstCharacters.IsEnabled = False
        btnAddCharacter.IsEnabled = False
        btnEditCharacter.IsEnabled = False
        btnSaveCharacter.IsEnabled = False
        btnRemoveCharacter.IsEnabled = False
    End Sub
    Sub UnlockUI()
        btnBrowseInput.IsEnabled = True
        btnBrowseModBase.IsEnabled = True
        txtInputCsv.IsEnabled = True
        txtModBaseDir.IsEnabled = True
        btnStart.IsEnabled = True
        btnSaveInputCsv.IsEnabled = True
        btnSaveInputCsvCopy.IsEnabled = True
        btnHelp.IsEnabled = True
        txtCharacterTag.IsEnabled = True
        txtCharacterNameLatin.IsEnabled = True
        txtCharacterNameCHS.IsEnabled = True
        chkCharacterIsCountryLeader.IsEnabled = True
        chkPoliticalAdvisor.IsEnabled = True
        chkTheorist.IsEnabled = True
        chkArmyChief.IsEnabled = True
        chkNavyChief.IsEnabled = True
        chkAirChief.IsEnabled = True
        txtCharacterAdvisorSlots.IsEnabled = True
        txtCharacterAdvisorTraits.IsEnabled = True
        chkCorpsCommander.IsEnabled = True
        chkFieldMarshal.IsEnabled = True
        chkNavyLeader.IsEnabled = True
        txtCharacterArmySlots.IsEnabled = True
        txtCharacterArmyTraits.IsEnabled = True
        txtCharacterDesc.IsEnabled = True
        lstCharacters.IsEnabled = True
        btnAddCharacter.IsEnabled = True
        btnEditCharacter.IsEnabled = True
        btnSaveCharacter.IsEnabled = True
        btnRemoveCharacter.IsEnabled = True
    End Sub

    Private Sub btnStart_Click(sender As Object, e As RoutedEventArgs) Handles btnStart.Click
        'Save current CSV
        If Not SaveInputCsv() Then
            Return
        End If

        LockUI()

        If InputCsvPath.Trim() = "" Or OutputDiectory.Trim() = "" Then
            MessageBox.Show("输入文件或输出路径无效。", "错误", MessageBoxButtons.OK, MessageBoxIcon.Error)
            UnlockUI()
            Return
        End If

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
            '    TAG,NAME_LATIN,NAME_CHS,IS_COUNTRY_LEADER,ADVISOR_SLOTS,ADVISOR_TRAITS,ARMY_SLOTS,ARMY_TRAITS,DESC
            '        If IS_COUNTRY_LEADER is 1, this character can be country leader
            '        ARMY_SLOTS could be "corps_commander", "field_marshal" or "navy_leader", separated by white space
            '        TRAITS will be applied to all slots in current implementation
            'Current line in input file
            Dim CurrentLineIndex As Integer = 0
            Dim CurrentLine() As String
            Const LineDataFieldCount As Integer = 9
            'Used tokens list (avoid 1 character with multiple instances)
            Dim UsedCharacterTokensCounter As New Dictionary(Of String, Integer)
            While Not CharacterInputFileStream.EndOfStream
                Dim CurrentLineRaw As String = CharacterInputFileStream.ReadLine()

                'Ignore empty lines
                If CurrentLineRaw.Trim().Length = 0 Then
                    Continue While
                End If

                'Extract components
                CurrentLine = Split(CurrentLineRaw, ",", LineDataFieldCount)
                CurrentLineIndex += 1
                If CurrentLine.Length <> LineDataFieldCount Then
                    AddMessage("行 " & CurrentLineIndex & "处的信息无效: 需要 " & LineDataFieldCount & " 个信息栏位，但只有 " & CurrentLine.Length)
                    AddMessage("需要的行格式: TAG,NAME_LATIN,NAME_CHS,IS_COUNTRY_LEADER,ADVISOR_SLOTS,ADVISOR_TRAITS,ARMY_SLOTS,ARMY_TRAITS,DESC")
                    Continue While
                End If
                Dim CurrentCharacterTag As String = CurrentLine(0).Trim().ToUpper()
                Dim CurrentCharacterNameLatin As String = CurrentLine(1).Trim()
                Dim CurrentCharacterNameCHS As String = CurrentLine(2).Trim()
                Dim CurrentCharacterIsCountryLeader As String = CurrentLine(3).Trim()
                Dim CurrentCharacterAdvisorSlots() As String = CurrentLine(4).Trim().Split(New Char() {" "}, StringSplitOptions.RemoveEmptyEntries)
                Dim CurrentCharacterAdvisorTraits As String = CurrentLine(5).Trim()
                Dim CurrentCharacterArmySlots() As String = CurrentLine(6).Trim().Split(New Char() {" "}, StringSplitOptions.RemoveEmptyEntries)
                Dim CurrentCharacterArmyTraits As String = CurrentLine(7).Trim()
                Dim CurrentCharacterDesc As String = CurrentLine(8).Trim()

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
                    CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(3, 4) & "traits = { " & CurrentCharacterAdvisorTraits & " }")
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
                        CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(3, 4) & "traits = { " & CurrentCharacterAdvisorTraits & " }")
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
                        CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(3, 4) & "traits = { " & CurrentCharacterArmyTraits & " }")
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
                        vbTab & "EQU,Rainbow Dash,云宝黛西,0,theorist air_chief,rd_ad_trait,corps_commander,rd_cc_trait,闪电天马队代理队长" & vbCrLf & _
                        vbTab & "这表示该角色：" & vbCrLf & _
                        vbTab & vbTab & "将被归并到名为EQU的Tag中" & vbCrLf & _
                        vbTab & vbTab & "不能作为国家领导人" & vbCrLf & _
                        vbTab & vbTab & "可以作为理论家、空军部长或指挥官" & vbCrLf & _
                        vbTab & vbTab & "作为理论家或空军部长时的特质为rd_ad_trait" & vbCrLf & _
                        vbTab & vbTab & "作为指挥官时的特质为rd_cc_trait" & vbCrLf & _
                        vbTab & vbTab & "将被归并到名为EQU的Tag中" & vbCrLf & _
                        vbTab & vbTab & "描述为""闪电天马队代理队长""", _
                        "帮助", MessageBoxButtons.OK, MessageBoxIcon.Information)
    End Sub

    Private Function SaveInputCsv(Optional SaveAsCopy As Boolean = False) As Boolean
        If InputCsvPath.Trim() = "" Or SaveAsCopy Then
            Dim FileBrowser As New SaveFileDialog
            With FileBrowser
                .Title = "请指定人物描述文件的保存位置"
            End With
            If FileBrowser.ShowDialog() = Forms.DialogResult.OK Then
                InputCsvPath = FileBrowser.FileName
                txtInputCsv.Text = InputCsvPath
            Else
                Return False
            End If
        End If
        'Export CSV file
        Try
            Dim UTF8WithoutBOM As System.Text.UTF8Encoding = New System.Text.UTF8Encoding(False)
            Dim CsvOutputFile As New StreamWriter(InputCsvPath, False, UTF8WithoutBOM)
            For Each CurrentCharacter In CharacterInfoList
                CsvOutputFile.WriteLine(CurrentCharacter.ToCsvInfoLine())
            Next
            CsvOutputFile.Close()
        Catch ex As Exception

        End Try
        'Reload
        LoadCharacterInfo()

        Return True
    End Function

    Private Sub btnSaveInputCsv_Click(sender As Object, e As RoutedEventArgs) Handles btnSaveInputCsv.Click
        SaveInputCsv()
    End Sub

    Private Sub btnSaveInputCsvCopy_Click(sender As Object, e As RoutedEventArgs) Handles btnSaveInputCsvCopy.Click
        SaveInputCsv(True)
    End Sub

    Private Sub UpdateCharacterInfoPanel(CharacterInfo As HoI4CharacterInfo)
        txtCharacterTag.Text = CharacterInfo.CountryTag
        txtCharacterNameLatin.Text = CharacterInfo.NameLatin
        txtCharacterNameCHS.Text = CharacterInfo.NameCHS
        chkCharacterIsCountryLeader.IsChecked = CharacterInfo.IsCountryLeader
        'Advisor
        chkPoliticalAdvisor.IsChecked = False
        chkTheorist.IsChecked = False
        chkArmyChief.IsChecked = False
        chkNavyChief.IsChecked = False
        chkAirChief.IsChecked = False
        chkHighCommand.IsChecked = False
        txtCharacterAdvisorSlots.Text = ""
        For Each CurrentSlot In CharacterInfo.AdvisorSlots
            If CurrentSlot = "political_advisor" Then
                chkPoliticalAdvisor.IsChecked = True
            elseif CurrentSlot = "theorist" Then
            chkTheorist.IsChecked = True
            ElseIf CurrentSlot = "army_chief" Then
                chkArmyChief.IsChecked = True
            ElseIf CurrentSlot = "navy_chief" Then
                chkNavyChief.IsChecked = True
            ElseIf CurrentSlot = "air_chief" Then
                chkAirChief.IsChecked = True
            ElseIf CurrentSlot = "high_command" Then
                chkHighCommand.IsChecked = True
            Else
                txtCharacterAdvisorSlots.Text = txtCharacterAdvisorSlots.Text & CurrentSlot
            End If
        Next
        txtCharacterAdvisorSlots.Text = txtCharacterAdvisorSlots.Text.Trim()
        txtCharacterAdvisorTraits.Text = ""
        For Each CurrentTrait In CharacterInfo.AdvisorTraits
            txtCharacterAdvisorTraits.Text = txtCharacterAdvisorTraits.Text & CurrentTrait
        Next
        txtCharacterAdvisorTraits.Text = txtCharacterAdvisorTraits.Text.Trim()
        'Army
        chkCorpsCommander.IsChecked = False
        chkFieldMarshal.IsChecked = False
        chkNavyLeader.IsChecked = False
        txtCharacterArmySlots.Text = ""
        For Each CurrentSlot In CharacterInfo.ArmySlots
            If CurrentSlot = "corps_commander" Then
                chkCorpsCommander.IsChecked = True
            ElseIf CurrentSlot = "field_marshal" Then
                chkFieldMarshal.IsChecked = True
            ElseIf CurrentSlot = "navy_leader" Then
                chkNavyLeader.IsChecked = True
            Else
                txtCharacterArmySlots.Text = txtCharacterArmySlots.Text & CurrentSlot
            End If
        Next
        txtCharacterArmySlots.Text = txtCharacterArmySlots.Text.Trim()
        txtCharacterArmyTraits.Text = ""
        For Each CurrentTrait In CharacterInfo.ArmyTraits
            txtCharacterArmyTraits.Text = txtCharacterArmyTraits.Text & CurrentTrait
        Next
        txtCharacterArmyTraits.Text = txtCharacterArmyTraits.Text.Trim()
        'Description
        txtCharacterDesc.Text = CharacterInfo.Description
    End Sub

    Private Function CreateCharacterFromCurrentInfoPanel(CharacterInfo As HoI4CharacterInfo) As HoI4CharacterInfo
        CharacterInfo.CountryTag = txtCharacterTag.Text.Trim().ToUpper()
        CharacterInfo.NameLatin = txtCharacterNameLatin.Text.Trim()
        CharacterInfo.NameCHS = txtCharacterNameCHS.Text.Trim
        CharacterInfo.IsCountryLeader = chkCharacterIsCountryLeader.IsChecked
        'Advisor
        CharacterInfo.AdvisorSlots.Clear()
        If chkPoliticalAdvisor.IsChecked Then
            CharacterInfo.AdvisorSlots.Add("political_advisor")
        End If
        If chkTheorist.IsChecked Then
            CharacterInfo.AdvisorSlots.Add("theorist")
        End If
        If chkArmyChief.IsChecked Then
            CharacterInfo.AdvisorSlots.Add("army_chief")
        End If
        If chkNavyChief.IsChecked Then
            CharacterInfo.AdvisorSlots.Add("navy_chief")
        End If
        If chkAirChief.IsChecked Then
            CharacterInfo.AdvisorSlots.Add("air_chief")
        End If
        If chkHighCommand.IsChecked Then
            CharacterInfo.AdvisorSlots.Add("high_command")
        End If
        Dim TempList() As String = txtCharacterAdvisorSlots.Text.Trim().Split(New Char() {" "}, StringSplitOptions.RemoveEmptyEntries)
        For Each CurrentStr As String In TempList
            If Not CharacterInfo.AdvisorSlots.Contains(CurrentStr) Then
                CharacterInfo.AdvisorSlots.Add(CurrentStr)
            End If
        Next
        TempList = txtCharacterAdvisorTraits.Text.Trim().Split(New Char() {" "}, StringSplitOptions.RemoveEmptyEntries)
        CharacterInfo.AdvisorTraits.Clear()
        For Each CurrentStr As String In TempList
            If Not CharacterInfo.AdvisorTraits.Contains(CurrentStr) Then
                CharacterInfo.AdvisorTraits.Add(CurrentStr)
            End If
        Next
        'Army
        CharacterInfo.ArmySlots.Clear()
        If chkCorpsCommander.IsChecked Then
            CharacterInfo.ArmySlots.Add("corps_commander")
        End If
        If chkTheorist.IsChecked Then
            CharacterInfo.ArmySlots.Add("field_marshal")
        End If
        If chkNavyLeader.IsChecked Then
            CharacterInfo.ArmySlots.Add("navy_leader")
        End If
        TempList = txtCharacterArmySlots.Text.Trim().Split(New Char() {" "}, StringSplitOptions.RemoveEmptyEntries)
        For Each CurrentStr As String In TempList
            If Not CharacterInfo.ArmySlots.Contains(CurrentStr) Then
                CharacterInfo.ArmySlots.Add(CurrentStr)
            End If
        Next
        TempList = txtCharacterArmyTraits.Text.Trim().Split(New Char() {" "}, StringSplitOptions.RemoveEmptyEntries)
        CharacterInfo.ArmyTraits.Clear()
        For Each CurrentStr As String In TempList
            If Not CharacterInfo.ArmyTraits.Contains(CurrentStr) Then
                CharacterInfo.ArmyTraits.Add(CurrentStr)
            End If
        Next
        'Description
        CharacterInfo.Description = txtCharacterDesc.Text.Trim()

        Return CharacterInfo
    End Function

    Private Sub btnAddCharacter_Click(sender As Object, e As RoutedEventArgs) Handles btnAddCharacter.Click
        Dim NewCharacter As New HoI4CharacterInfo
        CreateCharacterFromCurrentInfoPanel(NewCharacter)
        CharacterInfoList.Add(NewCharacter)
        CurrentCharacterIndex = CharacterInfoList.Count - 1
        RefreshCharacterList()
    End Sub

    Private Sub btnSaveCharacter_Click(sender As Object, e As RoutedEventArgs) Handles btnSaveCharacter.Click
        If CurrentCharacterIndex >= 0 And CurrentCharacterIndex < CharacterInfoList.Count Then
            CreateCharacterFromCurrentInfoPanel(CharacterInfoList(CurrentCharacterIndex))
        Else
            Dim NewCharacter As New HoI4CharacterInfo
            CreateCharacterFromCurrentInfoPanel(NewCharacter)
            CharacterInfoList.Add(NewCharacter)
        End If
        RefreshCharacterList()
    End Sub

    Private Sub btnEditCharacter_Click(sender As Object, e As RoutedEventArgs) Handles btnEditCharacter.Click
        If lstCharacters.SelectedIndex >= 0 Then
            CurrentCharacterIndex = lstCharacters.SelectedIndex
            UpdateCharacterInfoPanel(CharacterInfoList(CurrentCharacterIndex))
        End If
        RefreshCharacterList()
    End Sub

    Private Sub btnRemoveCharacter_Click(sender As Object, e As RoutedEventArgs) Handles btnRemoveCharacter.Click
        If lstCharacters.SelectedIndex >= 0 Then
            Dim RemovedIndex As Integer = lstCharacters.SelectedIndex
            If MessageBox.Show("确定删除该人物吗？" & vbCrLf & vbCrLf & CharacterTextList(RemovedIndex), "删除人物", MessageBoxButtons.YesNo, MessageBoxIcon.Question) = Forms.DialogResult.Yes Then
                CharacterInfoList.RemoveAt(RemovedIndex)
                If CurrentCharacterIndex > RemovedIndex Then
                    CurrentCharacterIndex -= 1
                ElseIf CurrentCharacterIndex = RemovedIndex Then
                    CurrentCharacterIndex = -1
                End If
            End If
        End If
        RefreshCharacterList()
    End Sub

    Private Sub lstCharacters_MouseDoubleClick(sender As Object, e As MouseButtonEventArgs) Handles lstCharacters.MouseDoubleClick
        If lstCharacters.SelectedIndex >= 0 Then
            CurrentCharacterIndex = lstCharacters.SelectedIndex
            UpdateCharacterInfoPanel(CharacterInfoList(CurrentCharacterIndex))
        End If
        RefreshCharacterList()
    End Sub
End Class
