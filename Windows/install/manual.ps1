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

# Kindle for PC
Start-BitsTransfer `
    -Source "https://kindleforpc.s3.amazonaws.com/70951/KindleForPC-installer-2.5.70951.exe" `
    -Destination (Join-Path -Path $setupPath -ChildPath "KindleForPC-installer-2.5.70951.exe")

# Tablacus Explorer
Start-BitsTransfer `
    -Source "https://github.com/tablacus/TablacusExplorer/releases/download/24.10.11/te241011.zip" `
    -Destination (Join-Path -Path $setupPath -ChildPath "te241011.zip")

