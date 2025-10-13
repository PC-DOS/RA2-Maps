Imports System.IO

Module Module1
    'Debug const
    Const IsDebugging As Boolean = False
    'Path constants
    Const ModCharacterInfoDirRelativePath As String = "common\characters\"
    Const ModCountryHistoryDirRelativePath As String = "history\countries\"
    Const ModCharacterInfoCHSLocalisationDirRelativePath As String = "localisation\simp_chinese\characters\"
    'File name constants
    Const ModCharacterInfoCHSLocalisationFileName As String = "{TAG}_characters_l_simp_chinese.yml"

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

    Sub Main()
        Dim CmdArg As List(Of String) = My.Application.CommandLineArgs.ToList()

        Dim CharacterInputFilePath As String
        Dim ModBaseDir As String

        'Check arguments
        If CmdArg.Count = 0 Then
            Console.WriteLine("Please input character input file path.")
            CharacterInputFilePath = Console.ReadLine()
            Console.WriteLine("")
            Console.WriteLine("Please input the base path of your Mod.")
            ModBaseDir = Console.ReadLine()
            Console.WriteLine("")
        ElseIf CmdArg.Count = 1 Then
            CharacterInputFilePath = CmdArg(0)
            Console.WriteLine("Please input the base path of your Mod.")
            ModBaseDir = Console.ReadLine()
            Console.WriteLine("")
        Else
            CharacterInputFilePath = CmdArg(0)
            ModBaseDir = CmdArg(1)
        End If

        'Debug only
        If IsDebugging Then
            CharacterInputFilePath = "Test.csv"
            ModBaseDir = "C:\Mod_Test"
        End If

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
            Console.WriteLine("Opened character input file """ & CharacterInputFilePath & """")
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
                    Console.WriteLine("Invalid line at line " & CurrentLineIndex & ": Invalid component count, expected " & LineDataFieldCount & ", got " & CurrentLine.Length)
                    Console.WriteLine("Expected line format: TAG, NAME_LATIN, NAME_CHS, IS_COUNTRY_LEADER, ADVISOR_SLOTS, ARMY_SLOTS, TRAITS,DESC")
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
                Console.WriteLine("Current character: " & CurrentCharacterInternalName)

                'Append current character to character information file
                Dim CurrentCharacterInfoFilePath As String = ModCharacterInfoDir & CurrentCharacterTag & ".txt"
                If Not File.Exists(CurrentCharacterInfoFilePath) Then
                    File.Create(CurrentCharacterInfoFilePath).Close()
                End If
                'Write initial payload
                Console.WriteLine("Writing character information file: """ & CurrentCharacterInfoFilePath & """")
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
                        CurrentCharacterInfoFileWriter.WriteLine(GenerateWhiteSpaces(3, 4) & "idea_token = default_idea_token")
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
                Console.WriteLine("Writing character history file: """ & CurrentCharacterHistoryFilePath & """")
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
                Console.WriteLine("Writing character localisation file: """ & CurrentCharacterInfoCHSLocalisationPath & """")
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
                CurrentCharacterInfoCHSLocalisationWriter.WriteLine(" " & CurrentCharacterInternalName & ":0 """ & CurrentCharacterNameCHS & """")
                CurrentCharacterInfoCHSLocalisationWriter.WriteLine(" " & CurrentCharacterDescKey & ":0 """ & CurrentCharacterDesc & """")
                'Close file
                CurrentCharacterInfoCHSLocalisationWriter.Close()

                Console.WriteLine("")
            End While

            CharacterInputFileStream.Close()
        Catch ex As Exception
            Console.WriteLine("Error " & ex.HResult & ": " & ex.Message & vbCrLf & vbCrLf & ex.StackTrace)
        End Try

        If IsDebugging Then
            Console.ReadKey()
        End If

    End Sub

End Module
