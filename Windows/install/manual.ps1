# 初期処理
$timestamp = (Get-Date).ToString("yyyyMMddTHHmmss")
$userPath = [System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::UserProfile)
$downloadPath = Join-Path -Path $userPath -ChildPath "Downloads"
$setupPath = Join-Path -Path $downloadPath -ChildPath "Setup-$timestamp"

New-Item -Path $setupPath -ItemType "directory"

# honto ビューアアプリ
Start-BitsTransfer `
    -Source "https://dl.honto.jp/pcapp/honto_setup.exe" `
    -Destination (Join-Path -Path $setupPath -ChildPath "honto_setup.exe")

# HYPER SBI 2
Start-BitsTransfer `
    -Source "https://data.sbisec.co.jp/hsbi2/HYPER_SBI_2_Setup.exe" `
    -Destination (Join-Path -Path $setupPath -ChildPath "HYPER_SBI_2_Setup.exe")

# マーケットスピード II
Start-BitsTransfer `
    -Source "https://download.rakuten-sec.co.jp/MarketSpeed2Installkits_0001.exe" `
    -Destination (Join-Path -Path $setupPath -ChildPath "MarketSpeed2Installkits_0001.exe")

# VMware Workstation Pro
Start-Process "https://support.broadcom.com/group/ecx/productdownloads?subfamily=VMware+Workstation+Pro"