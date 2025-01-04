import array
import colorsys

def RGB2HSV(tplRGB : tuple) -> tuple:
    r = tplRGB[0]
    g = tplRGB[1]
    b = tplRGB[2]
    h, s, v = colorsys.rgb_to_hsv(r/255, g/255, b/255)
    return (round(h*360), round(s*100), round(v*100))
#End Function

def HSV2RGB(tplHSV : tuple, Use0To255Mode = False) -> tuple:
    h = tplHSV[0]
    s = tplHSV[1]
    v = tplHSV[2]
    if Use0To255Mode :
        r, g, b = colorsys.hsv_to_rgb(h/255, s/255, v/255)
    else :
        r, g, b = colorsys.hsv_to_rgb(h/360, s/100, v/100)
    #End If
    return (round(r*255), round(g*255), round(b*255))
#End Function

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

def SplitString(sStringToSplit : str, sSeparator : str = None, nMaxSplitCount : int = -1, RemoveEmptyEntries : bool = False) -> array :
    # Split string
    arrResult = sStringToSplit.split(sep=sSeparator, maxsplit=nMaxSplitCount)

    # Remove empty enrties
    if RemoveEmptyEntries :
        arrResult = list(filter(None, arrResult))
    #End If

    return arrResult
#End Function

if __name__ == "__main__" :
    # Convert RA2 HSV to RGB
    arrRGBResults = []
    while True :
        sIniLine = input()
        if IsStringNullOrEmpty(sIniLine) :
            break
        #End If

        arrIniParam = SplitString(sIniLine, "=", 1, False)
        sColorKey = arrIniParam[0]
        sHSV = arrIniParam[1]
        iCommentPos = sHSV.find(";")
        if iCommentPos > 0 :
            sHSV = sHSV[0:iCommentPos-1]
        elif iCommentPos == 0 :
            continue
        #End If
        arrHSV = SplitString(sHSV, ",", -1, True)
        tplHSV = (int(arrHSV[0]), int(arrHSV[1]), int(arrHSV[2]))
        tplRGB = HSV2RGB(tplHSV, True)
        arrRGBResults.append(f"{sColorKey}={tplRGB[0]},{tplRGB[1]},{tplRGB[2]}")
    #End While

    print("Converted colors:")
    for ColorLine in arrRGBResults :
        print(ColorLine)
    #Next
#End If
