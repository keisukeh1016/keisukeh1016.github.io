Add-Type -AssemblyName System.Windows.Forms

# Start MarketSpeed2
Set-Location "$env:USERPROFILE\AppData\Local\MarketSpeed2\Bin"
.\MarketSpeed2.exe
Start-Sleep -s 8

# Input PassWord
[System.Windows.Forms.SendKeys]::SendWait($env:RakutenSec)
Start-Sleep -s 2

# Input Enter
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -s 8
