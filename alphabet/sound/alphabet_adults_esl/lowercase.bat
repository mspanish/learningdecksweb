@echo off

setlocal ENABLEDELAYEDEXPANSION

if not exist textaloud_scripts3 mkdir textaloud_scripts3


FOR /F "tokens=1,2 delims=._ " %%A in ( 'dir /O:N /L /B  /N *.mp3') do (

set word=%%A
set fileout=%%A_lowercase.txt


echo the letter^<spell^> !word!^</spell^>. lowercase  >> !fileout!
move "!fileout!"  textaloud_scripts3
)

>> !fileout!


echo !word!
cls
endlocal