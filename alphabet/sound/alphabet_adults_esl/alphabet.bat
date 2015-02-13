@echo off

setlocal ENABLEDELAYEDEXPANSION

if not exist textaloud_scripts5 mkdir textaloud_scripts5

for /f "tokens=1,2 delims=_" %%A  in (alphabet.txt ) do ( 

set word=%%A
set fileout=%%A.txt


echo !word!.  >> !fileout!
move "!fileout!" textaloud_scripts5
)

>> !fileout!


echo !word!
pause
cls
endlocal