# Add Decision Root Scope

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
    
# Main entry point
if __name__ == "__main__" :
    #sDecisionIn = UniformPathString("E:\\Git\\ra2-maps\\HoI4\\SCP_EQ_Tools\\SCP_EQ_Tools\\common\\decisions\\SCP_EQ_Tools_enhancing_decisions.txt", IsPathToDirectory=False)
    #sDecisionOut = UniformPathString("E:\\Git\\ra2-maps\\HoI4\\SCP_EQ_Tools\\SCP_EQ_Tools\\common\\decisions\\processed_SCP_EQ_Tools_enhancing_decisions.txt", IsPathToDirectory=False)
    sDecisionIn = UniformPathString("E:\\Git\\ra2-maps\\HoI4\\SCP_EQ_Tools\\SCP_EQ_Tools\\common\\decisions\\SCP_EQ_Tools_enhancing_decisions_TNO_laws.txt", IsPathToDirectory=False)
    sDecisionOut = UniformPathString("E:\\Git\\ra2-maps\\HoI4\\SCP_EQ_Tools\\SCP_EQ_Tools\\common\\decisions\\processed_SCP_EQ_Tools_enhancing_decisions_TNO_laws.txt", IsPathToDirectory=False)
    
    sScopeText = "var:ROOT.SCP_EQ_Tools_enhancing_decisions_global_target"
    sLineBreak = "\n"

    # Load original decision
    arrDecisionLines = []
    with open(sDecisionIn, "r", encoding="utf-8") as filCurrentDecision :
        arrDecisionLines = filCurrentDecision.readlines()
    #End With
    
    IsInDecisionCompleteOrRemoveEffect = False
    with open(sDecisionOut, "w", encoding="utf-8") as filCurrentDecision :
        for CurrentLine in arrDecisionLines :
            if CurrentLine.startswith("        complete_effect = {") or CurrentLine.startswith("        remove_effect = {") :
                IsInDecisionCompleteOrRemoveEffect = True
                filCurrentDecision.write(CurrentLine)
                filCurrentDecision.write("            " + sScopeText + " = {" + sLineBreak)
            elif CurrentLine.startswith("        }") and IsInDecisionCompleteOrRemoveEffect :
                IsInDecisionCompleteOrRemoveEffect = False
                filCurrentDecision.write("            }" + sLineBreak)
                filCurrentDecision.write(CurrentLine)
            elif IsInDecisionCompleteOrRemoveEffect :
                filCurrentDecision.write("    " + CurrentLine)
            else :
                filCurrentDecision.write(CurrentLine)
            #End If
        #Next
    #End With
#End If