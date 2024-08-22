# 初期処理
$download = ([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::UserProfile) + "\Downloads\Setup")
New-Item $download -ItemType "directory"
Push-Location $download

# Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# honto ビューアアプリ
curl.exe -LO "https://dl.honto.jp/pcapp/honto_setup.exe"

# HYPER SBI 2
curl.exe -LO "https://data.sbisec.co.jp/hsbi2/HYPER_SBI_2_Setup.exe"

# VMware Workstation Pro
curl.exe -LO "https://downloads2.broadcom.com/?file=VMware-workstation-full-17.5.2-23775571.exe&oid=30869714&id=HXLkQ3vjV75SG7X1f3xYY3YHIRihG9wIQ7R0YHLN1VtK5k8a0ZGdZVTpq2jZreZ2VxJu&verify=1723971972-LcgLeT%2BUhNHAsv2lGlWjuZgUJWoCCW72PoD3%2BRo3lZI%3D"

# マーケットスピード II
curl.exe -LO "https://download.rakuten-sec.co.jp/MarketSpeed2Installkits_0001.exe"

# 終了処理
Pop-Location
