Public Class HoI4CharacterInfo
    ''' <summary>
    ''' Tag of the country which this character belongs to
    ''' </summary>
    ''' <remarks></remarks>
    Public CountryTag As String
    ''' <summary>
    ''' Character name, in latin (mostly English)
    ''' </summary>
    ''' <remarks></remarks>
    Public NameLatin As String
    ''' <summary>
    ''' Character name, in simplified Chinese
    ''' </summary>
    ''' <remarks></remarks>
    Public NameCHS As String
    ''' <summary>
    ''' Marks if this character can become country leader
    ''' </summary>
    ''' <remarks></remarks>
    Public IsCountryLeader As Boolean
    ''' <summary>
    ''' List of advisor slots
    ''' </summary>
    ''' <remarks></remarks>
    Public AdvisorSlots As New List(Of String)
    ''' <summary>
    ''' List of advisor traits
    ''' </summary>
    ''' <remarks></remarks>
    Public AdvisorTraits As New List(Of String)
    ''' <summary>
    ''' List of army related roles
    ''' </summary>
    ''' <remarks></remarks>
    Public ArmySlots As New List(Of String)
    ''' <summary>
    ''' List of army related traits
    ''' </summary>
    ''' <remarks></remarks>
    Public ArmyTraits As New List(Of String)
    ''' <summary>
    ''' Descripton of this character
    ''' </summary>
    ''' <remarks></remarks>
    Public Description As String

    Public Const DataFieldCount As Integer = 9

    Public Function FromCsvInfoLine(CsvInfoLine As String, Optional Separator As String = ",") As HoI4CharacterInfo
        Dim CsvDataFields() As String = Split(CsvInfoLine, Separator, DataFieldCount)
        If CsvDataFields.Length < DataFieldCount Then
            Throw New ArgumentException("Invalid data field count, expected " & DataFieldCount & ", got" & CsvDataFields.Length)
        End If
        CountryTag = CsvDataFields(0).Trim().ToUpper()
        NameLatin = CsvDataFields(1).Trim()
        NameCHS = CsvDataFields(2).Trim()
        IsCountryLeader = IIf(CsvDataFields(3).Trim() = "0" Or CsvDataFields(3).Trim().ToLower() = "no" Or CsvDataFields(3).Trim().ToLower() = "false", False, True)
        AdvisorSlots = CsvDataFields(4).Trim().Split(New Char() {" "}, StringSplitOptions.RemoveEmptyEntries).ToList()
        AdvisorTraits = CsvDataFields(5).Trim().Split(New Char() {" "}, StringSplitOptions.RemoveEmptyEntries).ToList()
        ArmySlots = CsvDataFields(6).Trim().Split(New Char() {" "}, StringSplitOptions.RemoveEmptyEntries).ToList()
        ArmyTraits = CsvDataFields(7).Trim().Split(New Char() {" "}, StringSplitOptions.RemoveEmptyEntries).ToList()
        Description = CsvDataFields(8).Trim()
        Return Me
    End Function

    Public Function ToCsvInfoLine(Optional Separator As String = ",") As String
        Dim Result As String = ""
        Result = Result & CountryTag & Separator
        Result = Result & NameLatin & Separator
        Result = Result & NameCHS & Separator
        Result = Result & IIf(IsCountryLeader, "1", "0") & Separator
        Result = Result & StringArrayToString(AdvisorSlots) & Separator
        Result = Result & StringArrayToString(AdvisorTraits) & Separator
        Result = Result & StringArrayToString(ArmySlots) & Separator
        Result = Result & StringArrayToString(ArmyTraits) & Separator
        Result = Result & Description
        Return Result
    End Function

    Public Function ToListLine(Optional Separator As String = ", ") As String
        Dim Result As String = ""
        Result = Result & "所属 Tag: " & CountryTag & Separator
        Result = Result & "英文名: " & NameLatin & Separator
        Result = Result & "中文名: " & NameCHS & Separator
        Result = Result & "国家领导人: " & IIf(IsCountryLeader, "是", "否") & Separator
        Result = Result & "顾问槽: " & StringArrayToString(AdvisorSlots) & Separator
        Result = Result & "顾问特质: " & StringArrayToString(AdvisorTraits) & Separator
        Result = Result & "军官槽: " & StringArrayToString(ArmySlots) & Separator
        Result = Result & "军官特质: " & StringArrayToString(ArmyTraits)
        Return Result
    End Function

    Public Function StringArrayToString(StringArray As List(Of String), Optional Separator As String = " ") As String
        Dim Result As String = ""
        For Each CurrentElement As String In StringArray
            Result = Result & CurrentElement & Separator
        Next
        Return Result.Trim()
    End Function
End Class
