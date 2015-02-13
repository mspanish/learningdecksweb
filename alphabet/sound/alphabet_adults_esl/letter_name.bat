@echo off

setlocal ENABLEDELAYEDEXPANSION

if not exist textaloud_scripts mkdir textaloud_scripts


FOR /F "tokens=1,2 delims=._ " %%A in ( 'dir /O:N /L /B  /N *.mp3') do (

set word=%%A
set fileout=%%A.txt


echo the letter^<spell^> !word!^</spell^>  >> !fileout!
move "!fileout!"  textaloud_scripts
)

>> !fileout!


echo !word!
cls
endlocal