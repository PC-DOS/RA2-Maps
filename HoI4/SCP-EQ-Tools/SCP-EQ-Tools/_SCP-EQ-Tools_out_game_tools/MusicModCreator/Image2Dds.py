# Convert image to DDS file

# PNG to DDS converter
# See https://cloud.tencent.com/developer/ask/sof/105501223
# Also need to install ImageMagick DLLs, see https://docs.wand-py.org/en/latest/guide/install.html#install-imagemagick-on-windows
from wand import image

def ConvertImageToDds(sImageFilePath : str, sOutputFilePath : str) :
    with image.Image(filename=sImageFilePath) as imgSource:
        imgSource.compression = "dxt5"
        imgSource.save(filename=sOutputFilePath)
    #End With
#End Sub

# Main entry point
if __name__ == "__main__" :
    while True :
        print("Please input source file path, type \"exit\" to exit")
        sSource = input()
        if sSource == "exit" :
            break
        #End If
        print("Please input output file path")
        sOutput = input()
        
        ConvertImageToDds(sSource, sOutput)
    #End While
#End If