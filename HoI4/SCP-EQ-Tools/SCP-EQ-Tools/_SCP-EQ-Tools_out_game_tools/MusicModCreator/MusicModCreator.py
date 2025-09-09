# Create music mod from mp3 files simply

# Public libraries
import os
import sys
import array
import math
import datetime
import itertools
import glob
import copy
import shutil

# Import library for multi-processor processing
import multiprocessing
import concurrent.futures

# Chinese to Pinyin
# See https://pythondict.com/python-work/pypinyin/
from pypinyin import pinyin, lazy_pinyin, Style

# Music converter
# See https://blog.csdn.net/HaoZiHuang/article/details/118930518
from pydub import AudioSegment

# PNG to DDS converter
# See https://cloud.tencent.com/developer/ask/sof/105501223
# Also need to install ImageMagick DLLs, see https://docs.wand-py.org/en/latest/guide/install.html#install-imagemagick-on-windows
from wand import image

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

# Ensure the first letter of a given string is in upper case
def UpperFirst(sStringToUpper : str, sMethod : str = "first") -> str :
    sMethod = sMethod.lower()

    if len(sStringToUpper) == 0 :
        return ""
    #End If

    if sMethod == "first" :
        sFirst = sStringToUpper[0].upper()
        sOther = sStringToUpper[1:]
        return (sFirst + sOther)
    elif sMethod == "capitalize" :
        return sStringToUpper.capitalize()
    elif sMethod == "title" :
        return sStringToUpper.title()
    #End If
#End Function

# Calculate CPU core count for parallel computing
def GetCPUCoreCountForParallelComputing(dCPUCoreDividingDenominator : float = 2, nMaxCoreCountToUse : int = 61) -> int :
    # Check arguments
    if dCPUCoreDividingDenominator < 1 :
        raise ValueError("dCPUCoreDividingDenominator must be equal to or greater than 1")
    #End If

    nCPUCount = multiprocessing.cpu_count()
    nCPUCountToUse = math.ceil(nCPUCount / dCPUCoreDividingDenominator)
    if nMaxCoreCountToUse > 0 :
        nCPUCountToUse = min(nMaxCoreCountToUse, nCPUCountToUse)
    #End If

    print(f"ParallelComputing: {nCPUCount} logical processor(s) found on your system, recalibrating parallel job count to {nCPUCountToUse}...")

    return nCPUCountToUse
#End Function

def RemoveNonLatinCharacters(sInput : str) -> str :
    sValidCharacters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890_"
    sResult = ""
    for i in range(0, len(sInput)) :
        if sInput[i] in sValidCharacters :
            sResult += sInput[i]
        else :
            sResult += "_"
        #End If
    #Next
    return sResult
#End Function

def ChineseCharacterToPinyin(sInput : str) -> str :
    arrPinyin = lazy_pinyin(sInput, style=Style.NORMAL)
    sPinyin = ""
    for CurrentElem in arrPinyin :
        sPinyin += UpperFirst(CurrentElem)
    #Next
    return sPinyin
#End Function

def ConvertMp3ToOgg(sMp3FilePath : str, sOutputFilePath : str, sFfmpegPath : str) :
    if sFfmpegPath != "" :
        from os import environ, pathsep, path
        environ["PATH"] += pathsep + path.abspath(f"{sFfmpegPath}")
    #End If
    AudioSegment.from_mp3(sMp3FilePath).export(sOutputFilePath, format="ogg")
#End Sub

# Main entry point
if __name__ == "__main__" :
    sMusicInputDir = "F:/Music/"

    sMusicModName = "Days-of-Resistance-over-China"
    sMusicFilePrefix = "roc_"
    sMusicModBaseDir = f"D:/{sMusicModName}/"
    sMusicModOutputDir = f"{sMusicModBaseDir}{sMusicModName}/"
    sMusicFileOutputDir = f"{sMusicModOutputDir}music/"
    CreateDirectory(sMusicModOutputDir)
    CreateDirectory(sMusicFileOutputDir)
    CreateDirectory(sMusicModOutputDir + "gfx/")
    CreateDirectory(sMusicModOutputDir + "interface/")

    # Specify FFMpeg path
    # https://github.com/jiaaro/pydub/issues/668
    sFfmpegBasePath = "C:\\Program Files\\FFMpeg\\"
    sFfmpegPath = f"{sFfmpegBasePath}ffmpeg.exe"
    sFfprobePath = f"{sFfmpegBasePath}ffprobe.exe"
    from os import environ, pathsep, path
    environ["PATH"] += pathsep + path.abspath(f"{sFfmpegBasePath}")

    # Specify Image Magick path
    # https://docs.wand-py.org/en/latest/guide/install.html#install-imagemagick-on-windows
    sImageMagickPath = "C:\\Program Files\\ImageMagick-7.1.2-Q16-HDRI\\"
    environ["PATH"] += pathsep + path.abspath(f"{sImageMagickPath}")
    environ["MAGICK_HOME"] = path.abspath(f"{sImageMagickPath}")

    # Asset and station file
    # See https://hoi4.paradoxwikis.com/Music_modding
    sLineBreak = "\n"
    filAssetFile = open(sMusicFileOutputDir + f"{sMusicModName}_assets.asset", "w", encoding="utf-8")
    filStationFile = open(sMusicFileOutputDir + f"{sMusicModName}_soundtracks.txt", "w", encoding="utf-8")

    filStationFile.write("music_station = \"" + sMusicModName + "\"" + sLineBreak)
    filStationFile.write(sLineBreak)

    # Enumerate MP3 files in input dir
    arrMusicFiles = EnumerateFilesAndDirectories("*.mp3", sMusicInputDir)
    with concurrent.futures.ProcessPoolExecutor(max_workers=GetCPUCoreCountForParallelComputing()) as polFileConvertWorkers :
        for CurrentMusic in arrMusicFiles :
            sCurrentFileName = CurrentMusic.removesuffix(".mp3")
            sCurrentFileNamePinyin = RemoveNonLatinCharacters(ChineseCharacterToPinyin(sCurrentFileName))
            sCurrentFileNamePinyin = sCurrentFileNamePinyin[0:min(50,len(sCurrentFileNamePinyin))]
            sCurrentOutputFileName = sCurrentFileNamePinyin + ".ogg"
            sCurrentInputFilePath = sMusicInputDir + CurrentMusic
            sCurrentOutputFilePath = sMusicFileOutputDir + f"{sMusicFilePrefix}" + sCurrentOutputFileName

            print(f"Processing: ")
            print(f"    Input: {sCurrentInputFilePath}")
            print(f"    Output: {sCurrentOutputFilePath}")
            print(f"")

            # Write asset
            filAssetFile.write("music = {" + sLineBreak)
            filAssetFile.write("    " + "name = \"" + sCurrentFileName + "\"" + sLineBreak)
            filAssetFile.write("    " + "file = \"" + sCurrentOutputFileName + "\"" + sLineBreak)
            filAssetFile.write("    " + "volume = 1" + sLineBreak)
            filAssetFile.write("}" + sLineBreak)
            filAssetFile.write(sLineBreak)

            # Write station
            filStationFile.write("music = {" + sLineBreak)
            filStationFile.write("    " + "song = \"" + sCurrentFileName + "\"" + sLineBreak)
            filStationFile.write("    " + "change = {" + sLineBreak)
            filStationFile.write("    " + "    base = 0" + sLineBreak)
            filStationFile.write("    " + "}" + sLineBreak)
            filStationFile.write("}" + sLineBreak)
            filStationFile.write(sLineBreak)
            
            # Convert file
            polFileConvertWorkers.submit(ConvertMp3ToOgg,
                sCurrentInputFilePath, sCurrentOutputFilePath,
                sFfmpegBasePath)
        #Next
    #End With

    # Close output files
    filAssetFile.close()
    filStationFile.close()

    # Create GUI definition
    filInputFile = open("_Template_radio_station.gui", "r")
    sCurrentFileText = filInputFile.read()
    sCurrentFileText = sCurrentFileText.replace("<MUSIC STATION>", sMusicModName)
    sCurrentFileText = sCurrentFileText.replace("<SPRITE>", "GFX_" + sMusicModName)
    filOutputFile = open(sMusicModOutputDir + "interface/" + f"{sMusicModName}.gui", "w", encoding="utf-8")
    filOutputFile.write(sCurrentFileText)
    filOutputFile.close()
    filInputFile.close()

    # Create GFX definition
    filInputFile = open("_Template_radio_station.gfx", "r")
    sCurrentFileText = filInputFile.read()
    sCurrentFileText = sCurrentFileText.replace("<SPRITE>", "GFX_" + sMusicModName)
    filOutputFile = open(sMusicModOutputDir + "interface/" + f"{sMusicModName}.gfx", "w", encoding="utf-8")
    filOutputFile.write(sCurrentFileText)
    filOutputFile.close()
    filInputFile.close()

    # Create mod descriptor
    filInputFile = open("_Template_descriptor.mod", "r")
    sCurrentFileText = filInputFile.read()
    sCurrentFileText = sCurrentFileText.replace("<MUSIC STATION>", sMusicModName)
    filOutputFile = open(sMusicModOutputDir + f"descriptor.mod", "w", encoding="utf-8")
    filOutputFile.write(sCurrentFileText)
    filOutputFile.close()
    filOutputFile = open(sMusicModBaseDir + f"{sMusicModName}.mod", "w", encoding="utf-8")
    filOutputFile.write(sCurrentFileText)
    filOutputFile.close()
    filInputFile.close()

    # Create album art
    with image.Image(filename="_Template_album_art_replace_me.png") as img:
        img.compression = "dxt5"
        img.save(filename=sMusicModOutputDir + "gfx/" + "GFX_" + sMusicModName + ".dds")
    #End With

#End If