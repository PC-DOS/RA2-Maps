# Load localization YAML

# Public libraries
import os
import sys
import array
import math
import datetime
import itertools
import glob
import copy

# Constants
# Changes these based on your PC's environment
sHoI4BaseDir = "E:/Hearts of Iron IV/"
sHoI4ModBaseDir = "C:/Users/Administrator/Documents/Paradox Interactive/Hearts of Iron IV/mod/"

# Splitting string with given separator, and remove empty results if requested
def SplitString(sStringToSplit : str, sSeparator : str = None, nMaxSplitCount : int = -1, RemoveEmptyEntries : bool = False) -> list :
    # Split string
    arrResult = sStringToSplit.split(sep=sSeparator, maxsplit=nMaxSplitCount)

    # Remove empty enrties
    if RemoveEmptyEntries :
        arrResult = list(filter(None, arrResult))
    #End If

    return arrResult
#End Function

# Enumerate files and directories under specified directory
def EnumerateFilesAndDirectories(sEnumerateTerm : str, sRootPath : str = None, DoRecursiveEnumerate : bool = False, IncludeHiddenItems : bool = False) -> list :
    return glob.glob(sEnumerateTerm, root_dir=sRootPath, recursive=DoRecursiveEnumerate, include_hidden=IncludeHiddenItems)
#End Function

# Check existence of file or directory
def IsFileOrDirectoryExists(sPath : str) :
    return os.path.exists(sPath)
#End Function

# Uniforming path strings
def UniformPathString(sPathString : str, IsPathToDirectory : bool = False, IsPlatformCheckingsSkipped : bool = False) -> str :
    # Replace backslashes ("\") with slashes ("/") for compatibility with UNIX-like systems
    sUniformedPath = sPathString.replace("\\", "/")

    # Remove potential leading "\\?\" mark in Windows Unicode path
    if sUniformedPath.startswith("//?/UNC") :
        sUniformedPath = sUniformedPath.removeprefix("//?")
    elif sUniformedPath.startswith("//?/") :
        sUniformedPath = sUniformedPath.removeprefix("//?/")
    #End If

    # add a slash if it's path to a directory
    if IsPathToDirectory :
        if not sUniformedPath.endswith("/") :
            sUniformedPath = sUniformedPath + "/"
        #End If
    #End If
    
    # Convert path to platform-dependent form
    if not IsPlatformCheckingsSkipped :
        sUniformedPath = ConvertPathToWindowsUnicodePath(sUniformedPath)
    #End If

    return sUniformedPath
#End Function

# Convert full path to Windows Unicode path
# In order to bypass Windows long path limitation
# Ref. https://learn.microsoft.com/zh-cn/windows/win32/fileio/maximum-file-path-limitation
def ConvertPathToWindowsUnicodePath(sPathString : str, IsPlatformCheckingsBypassed : bool = False) -> str :
    # By default, this function only works on Windows
    # Only when IsPlatformCheckingsBypassed is set to True explicitly
    # On other platforms, will return the given path string with no modification
    sProcessedPath = sPathString
    if sys.platform.lower().startswith("win") or IsPlatformCheckingsBypassed :
        # Replace all "/" with "\"
        sProcessedPath = sProcessedPath.replace("/", "\\")
        
        # Check if current path could be converted to Unicode form safely
        # Only FULL path (starts with drive letters like "C:\") or UNC path (starts with \UNC\) could be processed safely
        if ((sProcessedPath[1] == ":" and sProcessedPath[2] == "\\")) or (sProcessedPath.startswith("\\UNC\\")) :
            # Add "\\?\" prefix
            if not sProcessedPath.startswith("\\\\?\\") :
                if sProcessedPath.startswith("\\?\\") :
                    sProcessedPath = "\\" + sProcessedPath
                elif sProcessedPath.startswith("?\\") :
                    sProcessedPath = "\\\\" + sProcessedPath
                elif sProcessedPath.startswith("\\") :
                    sProcessedPath = "\\\\?" + sProcessedPath
                else :
                    sProcessedPath = "\\\\?\\" + sProcessedPath
                #End If
            #End If
        #End If
    #End If
    return sProcessedPath
#End Function

# Create nested directories
def CreateDirectory(sPath : str) :
    if not IsFileOrDirectoryExists(sPath) :
        os.makedirs(sPath, exist_ok=True)
    #End If
#End Sub

# Load localization file
# Returns a dict:
#    Lang: Language string
#    LocKeys: Localization keys, each key maps to a tuple (nVersion, sLocalizedString)
def LoadLocalizationFile(sYamlPath : str) -> dict :
    # dctLocKeys is indexed by localization keys
    # Each key maps to a tuple (nVersion, sLocalizedString)
    dctLocKeys = dict()
    sLanguage = ""

    sYamlPath = UniformPathString(sYamlPath, IsPathToDirectory=False)
    if IsFileOrDirectoryExists(sYamlPath) :
        print(f"Loading YAML localization file {sYamlPath} ...")
        
        # Open file and enumerate lines
        with open(sYamlPath, "r", encoding="utf-8-sig") as filCurrentLocalization :
            arrLines = filCurrentLocalization.readlines()
            
            iLineIndex = 0
            for CurrentLine in arrLines :
                # Ignore empty lines
                if CurrentLine.strip() == "" :
                    continue
                #End If
                if CurrentLine.strip().startswith == "#" :
                    continue
                #End If
                
                # Split by ":"
                arrCurrentLine = SplitString(CurrentLine.strip(), ":", 2, True)
                nCurrentCompCount = len(arrCurrentLine)
                if nCurrentCompCount == 0 :
                    continue
                #End If
                
                # Extract language
                if (nCurrentCompCount == 1) and (sLanguage == "") and (arrCurrentLine[0].strip().startswith("l_")) :
                    sLanguage = arrCurrentLine[0].strip()
                    print(f"    Target language is {sLanguage}")
                    iLineIndex = iLineIndex + 1
                    continue
                #End If
                
                # Extract localization
                if nCurrentCompCount >= 2 :
                    sLocKey = arrCurrentLine[0].strip()
                    sRoughLocText = CurrentLine.strip().removeprefix(sLocKey + ":")
                    
                    # Check if version info presents
                    arrRoughLocText = SplitString(sRoughLocText, " ", 2, True)
                    iLocVer = 0
                    sLocText = ""
                    if (len(arrRoughLocText) > 0) and str.isnumeric(arrRoughLocText[0]) :
                        iLocVer = int(arrRoughLocText[0])
                        sLocText = sRoughLocText.removeprefix(arrRoughLocText[0]).strip()
                    else :
                        iLocVer = 0
                        sLocText = sRoughLocText.strip()
                    #End If
                    
                    # Remove comments
                    iInString = 0
                    for i in range(0, len(sLocText)) :
                        if (iInString == 0) and (sLocText[i] == "\"") :
                            iInString = 1
                        elif (iInString == 1) and (i > 0) and (sLocText[i] == "\"") and (sLocText[i-1] != "\\") :
                            iInString = i
                            break
                        #End If
                    #Next
                    sLocText = sLocText[0 : iInString+1].removeprefix("\"").removesuffix("\"")
                    
                    # Store data
                    dctLocKeys[sLocKey] = (iLocVer, sLocText)
                #End If
                    
                iLineIndex = iLineIndex + 1
            #Next
        #End With
    #End If

    return dict(Lang=sLanguage, LocKeys=dctLocKeys)
#End Function

# Write localization file
def SaveLocalizationFile(sYamlPath : str, dctLocFile : dict) :
    # dctLocKeys is indexed by localization keys
    # Each key maps to a tuple (nVersion, sLocalizedString)
    dctLocKeys = dctLocFile["LocKeys"]
    sLanguage = dctLocFile["Lang"]

    sYamlPath = UniformPathString(sYamlPath, IsPathToDirectory=False)
    sLineBreak = "\n"
    with open(sYamlPath, "w", encoding="utf-8-sig") as filCurrentLocalization :
        print(f"Writing YAML localization file {sYamlPath} ...")
        print(f"    Target language is {sLanguage}")
        
        filCurrentLocalization.write(sLanguage + ":" + sLineBreak)
        
        for CurrentLocKey in dctLocKeys.keys() :
            sCurrentLocVer = str(dctLocKeys[CurrentLocKey][0])
            sCurrentLoc = dctLocKeys[CurrentLocKey][1]
            filCurrentLocalization.write(" " + CurrentLocKey + ":" + sCurrentLocVer + " \"" + sCurrentLoc + "\"" + sLineBreak)
        #Next
    #End With
#End Sub
    
# Main entry point
if __name__ == "__main__" :
    sLocalizationInputDir = UniformPathString("C:/Users/Administrator/Documents/Paradox Interactive/Hearts of Iron IV/mod/TNO/localisation/simp_chinese", IsPathToDirectory=True)
    sLocalizationOutputDir = UniformPathString("C:/Users/Administrator/Documents/Paradox Interactive/Hearts of Iron IV/mod/TNO/localisation/simp_chinese/out", IsPathToDirectory=True)
    CreateDirectory(sLocalizationOutputDir)

    # Enumerate localizations
    arrLocFiles = EnumerateFilesAndDirectories("*.yml", sLocalizationInputDir)
    for CurrentLocFile in arrLocFiles :
        print(f"Reading ")
        sCurrentInputFullPath = UniformPathString(sLocalizationInputDir + CurrentLocFile)
        print(f"Reading {sCurrentInputFullPath}")
        dctCurrentLocFile = LoadLocalizationFile(sCurrentInputFullPath)
        
        # Country "_DEF" to full name
        for CurrentLocKey in dctCurrentLocFile["LocKeys"].keys() :
            if CurrentLocKey.lower().endswith("_def") :
                sCurrentNonDefKey = CurrentLocKey[0 : len(CurrentLocKey)-4]
                if sCurrentNonDefKey in dctCurrentLocFile["LocKeys"].keys() :
                    print(f"    Copy: {CurrentLocKey} ({dctCurrentLocFile["LocKeys"][CurrentLocKey][1]}) -> {sCurrentNonDefKey} ({dctCurrentLocFile["LocKeys"][sCurrentNonDefKey][1]})")
                    print(f"        Country name changed: {dctCurrentLocFile["LocKeys"][sCurrentNonDefKey][1]} -> {dctCurrentLocFile["LocKeys"][CurrentLocKey][1]}")
                
                    dctCurrentLocFile["LocKeys"][sCurrentNonDefKey] = copy.deepcopy(dctCurrentLocFile["LocKeys"][CurrentLocKey])
                else :
                    print(f"    Copy: {CurrentLocKey} ({dctCurrentLocFile["LocKeys"][CurrentLocKey][1]}) -> {sCurrentNonDefKey} (Default)")
                    print(f"        Country name changed: (Default) -> {dctCurrentLocFile["LocKeys"][CurrentLocKey][1]}")
                
                    dctCurrentLocFile["LocKeys"][sCurrentNonDefKey] = copy.deepcopy(dctCurrentLocFile["LocKeys"][CurrentLocKey])
                #End If
            #End If
        #Next
        
        sCurrentOutputFullPath = UniformPathString(sLocalizationOutputDir + CurrentLocFile)
        print(f"Writing {sCurrentOutputFullPath}")
        SaveLocalizationFile(sCurrentOutputFullPath, dctCurrentLocFile)
    #Next
#End If