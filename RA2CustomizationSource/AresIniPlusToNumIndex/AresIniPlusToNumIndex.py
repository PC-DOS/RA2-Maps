# If you run into "No module named '_curses'" on Windows, please execute:
# pip install windows-curses
from curses.ascii import isdigit

def IsStringNullOrEmpty(sStringToTest : str) -> bool :
    if sStringToTest is None :
        return True
    #End If

    if len(sStringToTest) == 0 :
        return True
    #End If

    if sStringToTest.isspace() :
        return True
    #End If

    return False
#End Function

def SplitString(sStringToSplit : str, sSeparator : str = None, nMaxSplitCount : int = -1, RemoveEmptyEntries : bool = False) -> list :
    # Split string
    arrResult = sStringToSplit.split(sep=sSeparator, maxsplit=nMaxSplitCount)

    # Remove empty enrties
    if RemoveEmptyEntries :
        arrResult = list(filter(None, arrResult))
    #End If

    return arrResult
#End Function

if __name__ == "__main__" :
    # Convert Ares's "+=" to numbered indexes
    arrConvertResults = []

    iInitialIndex = int(input("Please input initial index:"))
    iCurrentIndex = iInitialIndex

    while True :
        sIniLine = input()
        if sIniLine == ";;END;;" :
            break
        #End If

        arrIniParam = SplitString(sIniLine, "=", 1, False)

        if len(arrIniParam) >= 2 :
            if isdigit(arrIniParam[0].strip()) or (arrIniParam[0].strip() == "+") :
                arrIniParam[0] = str(iCurrentIndex)
            #End If
            arrConvertResults.append(f"{arrIniParam[0]}={arrIniParam[1]}")
            iCurrentIndex = iCurrentIndex + 1
        elif len(arrIniParam) == 1 :
            arrConvertResults.append(arrIniParam[0])
        else :
            arrConvertResults.append("")
        #End If
    #End While

    print("Converted indexes:")
    for IniLine in arrConvertResults :
        print(IniLine)
    #Next
#End If
