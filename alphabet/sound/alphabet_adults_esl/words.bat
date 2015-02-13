@echo off

setlocal ENABLEDELAYEDEXPANSION

if not exist textaloud_scripts4 mkdir textaloud_scripts4

for /f "tokens=1,2 delims=_" %%A  in (words.txt ) do ( 

set word=%%A
set fileout=%%A.txt


echo !word!.  >> !fileout!
move "!fileout!" textaloud_scripts4
)

>> !fileout!


echo !word!
pause
cls
endlocal