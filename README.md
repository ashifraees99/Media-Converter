# Media Converter for iPhone and Windows Users

## A script to convert all media (.heic | .hevc | .mov) in a directory into .jpg / .mp4

### Introduction
The reason why I made this script was to manage my data like pictures and videos shot on phones. If you're a person who backs these up on your local machine or external hard drive, and if you find it annoying to even view these files on your computer because Photos won't open those files, then by following these simple steps you can easily recreate the media in standard formats as a copy for easily opening them using Photos or Movies & TV on your Windows machine.

### System Requirements
- MATLAB installed on your system.
- ImageMagick installed and added to your system PATH.
- FFmpeg installed and added to your system PATH.

### Prerequisites

#### Installing ImageMagick
1. Download ImageMagick from [ImageMagick Downloads](https://imagemagick.org/script/download.php#windows).
2. Follow the installation instructions.
3. During installation, make sure to check the option to 'add ImageMagick to your system PATH'.

#### Installing FFmpeg
1. Download FFmpeg from [FFmpeg Downloads](https://www.geeksforgeeks.org/how-to-install-ffmpeg-on-windows/#).
2. Follow the installation instructions.
3. Add FFmpeg to your system PATH as per the instructions.

### Script Usage
1. Copy the Converter.m file to the target folder containing media files and then double-click it.
2. Wait for MATLAB to load, then click on 'Run' under the EDITOR section.
3. If there is a pop-up, click on 'Add to Path' or 'Change Path'.
4. Right-click in your folder and Sort by - Type, Group by - Type. 
5. The script sometimes may fail to terminate once the conversion has been completed so we have to manually stop the script by clikcing on the 'Stop' icon, the same button you clicked for 'Run'.

### Result
You can now view the converted files easily on your Windows machine. Even the thumbnails will be visible. It is now your wish to keep or delete the .heic | .hevc | .mov files.

### Cloning the Repository
Clone the repository to your local machine using the following command:
```bash
git clone https://github.com/ashifraees99/Media-Converter.git
```
## Please star this repository for future reference. Thank you.
