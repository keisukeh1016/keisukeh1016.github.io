# honto ビューアアプリ
Invoke-WebRequest `
  -UseBasicParsing `
  -Uri "https://dl.honto.jp/pcapp/honto_setup.exe" `
  -OutFile ([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::UserProfile) + "\Downloads")

# HYPER SBI 2
Invoke-WebRequest `
  -UseBasicParsing `
  -Uri "https://data.sbisec.co.jp/hsbi2/HYPER_SBI_2_Setup.exe" `
  -OutFile ([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::UserProfile) + "\Downloads")

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

# VMware Workstation Pro
Invoke-WebRequest `
  -UseBasicParsing `
  -Uri "https://downloads2.broadcom.com/?file=VMware-workstation-full-17.5.2-23775571.exe&oid=30869714&id=HXLkQ3vjV75SG7X1f3xYY3YHIRihG9wIQ7R0YHLN1VtK5k8a0ZGdZVTpq2jZreZ2VxJu&verify=1723971972-LcgLeT%2BUhNHAsv2lGlWjuZgUJWoCCW72PoD3%2BRo3lZI%3D" `
  -OutFile ([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::UserProfile) + "\Downloads")

# マーケットスピード II
Invoke-WebRequest `
  -UseBasicParsing `
  -Uri "https://download.rakuten-sec.co.jp/MarketSpeed2Installkits_0001.exe" `
  -OutFile ([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::UserProfile) + "\Downloads")
  
