# Generate tokens of national focuses from base HoI4 game and all installed mods
# Required for "Complete current focus" cheating
# 
# Please note: We make use of Clausewitz Engine's Token system by creating fake ideas (see https://hoi4.paradoxwikis.com/Data_structures#Token-valued_variables)
# In Clausewitz Engine's internal implementation, Tokens are stored like an array of strings indexed by Token IDs ( arrTokens[iTokenID] = sTokenKey )
# This array will be generated when launching the game everytime, and won't be stored in the save file
# It means that if you changed the fake ideas (which results in the change of Token counts and IDs), the ID of tokens will change when you laucnhing the game next time
# This will mess up some other mechanics which uses the Token system.
# For example, if you changed the fake ideas for Tokens, and load a previous existing TNO save file, you may notice that every country's economy types are messed. Since TNO uses a token-valued variable (see: econ_subtype_change, TNO_economy_subtype, econ_type_change, TNO_economy_type) for every country to store this country's economy type and subtype. And the changing in Token database messed the Token indexes. Just like:
# //Before saving
# arrTokens[0] = "token_file_1_dummy_token_1";
# arrTokens[1] = "econ_type_dummy_1";
# arrTokens[2] = "econ_type_dummy_2";
# arrTokens[3] = "econ_type_dummy_3";
# arrTokens[4] = "token_file_2_dummy_token_1";
# ctyMyCountry.iEconomyType = 2; //"econ_type_dummy_2"
# //Reloading, and you added a dummy idea
# arrTokens[0] = "token_file_1_dummy_token_1";
# arrTokens[1] = "token_file_1_dummy_token_2";
# arrTokens[2] = "econ_type_dummy_1";
# arrTokens[3] = "econ_type_dummy_2";
# arrTokens[4] = "econ_type_dummy_3";
# arrTokens[5] = "token_file_2_dummy_token_1";
# printf(arrTokens[ctyMyCountry.iEconomyType]); //Since ctyMyCountry.iEconomyType is still 2, you will get "econ_type_dummy_1"

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

# Enumerate national focuses under HoI4 game or mods' base dir
def EnumerateNationalFocuses(sBaseDir : str) -> list :
    arrNationalFocuses = []

    sBaseDir = UniformPathString(sBaseDir, IsPathToDirectory=True)
    if os.path.isdir(sBaseDir) :
        # Locate national focuses
        sNationalFocusDir = UniformPathString(sBaseDir + "common/national_focus", IsPathToDirectory=True)

        # Enumerate national focus files
        arrNationalFocusFiles = EnumerateFilesAndDirectories("*.txt", sNationalFocusDir)
        print(f"{len(arrNationalFocusFiles)} focus file(s) found")

        # Enumerate national focuses
        for CurrentFocusFile in arrNationalFocusFiles :
            #print(f"Processing focus file {CurrentFocusFile}")
            with open(sNationalFocusDir + CurrentFocusFile, "r", encoding="utf-8") as filCurrentFocusFile :
                arrLines = filCurrentFocusFile.readlines()
                sCurrentSection = ""
                for CurrentLine in arrLines :
                    # Remove comments
                    CurrentLine = CurrentLine.split("#")[0]
                
                    # Remove line breaks
                    CurrentLine = CurrentLine.rstrip()

                    # Update section
                    if CurrentLine.endswith("= {") :
                        sCurrentSection = CurrentLine.removesuffix(" = {").strip().lower()
                    #End If

                    # Check if is a focus id
                    if (sCurrentSection == "focus") or (sCurrentSection == "shared_focus") :
                        if CurrentLine.strip().startswith("id = ") :
                            arrNationalFocuses.append(CurrentLine.strip().replace("\t"," ").removeprefix("id = ").split(" ")[0])
                        elif CurrentLine.strip().startswith("id =") :
                            arrNationalFocuses.append(CurrentLine.strip().replace("\t"," ").removeprefix("id =").split(" ")[0])
                        elif CurrentLine.strip().startswith("id= ") :
                            arrNationalFocuses.append(CurrentLine.strip().replace("\t"," ").removeprefix("id= ").split(" ")[0])
                        elif CurrentLine.strip().startswith("id=") :
                            arrNationalFocuses.append(CurrentLine.strip().replace("\t"," ").removeprefix("id=").split(" ")[0])
                        #End If
                    #End If
                #Next
            #End With
        #Next
    #End If

    return arrNationalFocuses
#End Function


# Main entry point
if __name__ == "__main__" :
    sIdeasOutputDir = "../../common/ideas/"
    sIdeasOutputFileName = "SCP-EQ-Tools_national_focuses_dummy_ideas.txt"
    CreateDirectory(sIdeasOutputDir)
    sIdeasInitOutputDir = "../../common/scripted_effects/"
    sIdeasInitOutputFileName = "SCP-EQ-Tools_national_focuses_dummy_ideas_init_scripted_effects.txt"
    CreateDirectory(sIdeasInitOutputDir)

    arrFocuses = []

    # Base game
    arrCurrentFocuses = EnumerateNationalFocuses(sHoI4BaseDir)
    arrFocuses += arrCurrentFocuses

    # Mods
    arrModDirs = EnumerateFilesAndDirectories("*", sHoI4ModBaseDir)
    for CurrentMod in arrModDirs :
        sCurrentModDir = sHoI4ModBaseDir + CurrentMod
        if not os.path.isdir(sCurrentModDir) :
            continue
        #End If
        print(f"Processing mod {CurrentMod} in {sCurrentModDir}")

        arrCurrentFocuses = EnumerateNationalFocuses(sCurrentModDir)
        arrFocuses += arrCurrentFocuses
    #Next

    # Output
    sLineBreak = "\n"
    with open(sIdeasOutputDir + sIdeasOutputFileName, "w", encoding="utf-8") as filOutputFile :
        filOutputFile.write("ideas = {" + sLineBreak)
        filOutputFile.write("    hidden_ideas = {" + sLineBreak)
        for CurrentFocus in arrFocuses :
            filOutputFile.write("        " + CurrentFocus + " = {}" + sLineBreak)
        #Next
        filOutputFile.write("    }" + sLineBreak)
        filOutputFile.write("}" + sLineBreak)
    #End With
    with open(sIdeasInitOutputDir + sIdeasInitOutputFileName, "w", encoding="utf-8") as filOutputFile :
        filOutputFile.write("SCP-EQ-Tools_national_focuses_dummy_ideas_init_tokens = {" + sLineBreak)
        filOutputFile.write("    clear_array = global.SCP-EQ-Tools_national_focuses_tokens" + sLineBreak)
        for CurrentFocus in arrFocuses :
            filOutputFile.write("    add_to_array = { global.SCP-EQ-Tools_national_focuses_tokens = token:" + CurrentFocus + " }" + sLineBreak)
        #Next
        filOutputFile.write(sLineBreak)
        filOutputFile.write("    set_global_flag = SCP-EQ-Tools_is_national_focuses_dummy_ideas_tokens_init_done" + sLineBreak)
        filOutputFile.write("}" + sLineBreak)
    #End With
#End If