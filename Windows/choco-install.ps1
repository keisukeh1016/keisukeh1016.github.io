choco install 7zip --yes
choco install adobereader --yes
choco install brave --yes
choco install chrome-remote-desktop-host --yes
choco install discord --yes
choco install epicgameslauncher --yes
choco install ffftp --yes
choco install firefox --yes --params "/NoTaskbarShortcut /NoDesktopShortcut"
choco install gh --yes
choco install gimp --yes
choco install git --yes
choco install github-desktop --yes
choco install googlechrome --yes
choco install line --yes
choco install microsoft-windows-terminal --yes
choco install nvm --yes
choco install postman --yes
choco install powertoys --yes
choco install pwsh --yes
choco install sakuraeditor --yes --params "'/Tasks:!quicklaunch,!desktopicon,!fileassoc'"
choco install sqlitebrowser --yes
choco install tablacus --yes
choco install teamviewer --yes
choco install thunderbird --yes --params "/NoTaskbarShortcut /NoDesktopShortcut"
choco install vcredist140 --yes
choco install virtualbox --yes --params "/NoDesktopShortcut"
choco install volta --yes 
choco install vscode --yes --params "/NoDesktopIcon"
choco install winmerge -yes
choco install zoom --yes --params "'/NoDesktopShortcut'"

# SQL Server 2022 Express
Invoke-WebRequest `
  -UseBasicParsing `
  -Uri "https://download.microsoft.com/download/5/1/4/5145fe04-4d30-4b85-b0d1-39533663a2f1/SQL2022-SSEI-Expr.exe" `
  -OutFile ([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::UserProfile) + "\Downloads")

# SQL Server Management Studio
Invoke-WebRequest `
  -UseBasicParsing `
  -Uri "https://download.microsoft.com/download/9/b/e/9bee9f00-2ee2-429a-9462-c9bc1ce14c28/SSMS-Setup-JPN.exe" `
  -OutFile ([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::UserProfile) + "\Downloads")

# Visual Studio 2022 Community
Invoke-WebRequest `
  -UseBasicParsing `
  -Uri "https://c2rsetup.officeapps.live.com/c2r/downloadVS.aspx?sku=community&channel=Release&version=VS2022&source=VSLandingPage&cid=2030:0f9259c33556402991213d3b2a461252" `
  -OutFile ([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::UserProfile) + "\Downloads")

# マーケットスピード II
Invoke-WebRequest `
  -UseBasicParsing `
  -Uri "https://download.rakuten-sec.co.jp/MarketSpeed2Installkits_0001.exe" `
  -OutFile ([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::UserProfile) + "\Downloads")
