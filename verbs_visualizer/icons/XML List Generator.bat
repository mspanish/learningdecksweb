@echo off
rem ###########################################################
rem call in local map: 		mp3list.bat
rem
rem call from other map:	set MP3DIR=D:\Mp3Music\My Songs
rem				mp3list.bat
rem
rem result:			audiolist.xml
rem ###########################################################
SET filein=mp3.txt
SET fileout=songInfo.xml
SET filedir="%MP3DIR%"

if NOT %filedir%=="" goto continue

cd > %filein% 

for /f "tokens=*" %%i in ( %filein% ) do ( 
    SET filedir="%%i"
)

:continue

dir %filedir%\*.swf /b > %filein%

echo ^<?xml version="1.0"?^> > %fileout%
echo ^<songs^> >> %fileout%

for /f "tokens=*" %%i in ( %filein% ) do ( 
    echo  ^<image name=%filedir\%"%%i" file="%%i"/^> >> %fileout%
)

echo ^</songs^> >> %fileout%
del %filein% > nul
echo file: audiolist.xml is ready
