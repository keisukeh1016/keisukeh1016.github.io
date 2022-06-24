$AppName = (Get-Date).ToString('an\gular-yyyyMMdd-HHmmss')
npx --package "@angular/cli@12.2.13" --call "ng new $AppName --routing --skip-install --style scss"

Set-Location $AppName

# edit angular.json
$CliValue = [PSCustomObject]@{
  analytics = $false
}
Get-Content -LiteralPath .\angular.json |
  ConvertFrom-Json |
    Add-Member -MemberType NoteProperty -Name "cli" -Value $CliValue -Force -PassThru |
      ConvertTo-Json -Depth 100 |
        Set-Content -LiteralPath .\angular.json

# format angular.json
npx --package "prettier" --call "prettier --write .\angular.json"

# npm
npm install
# npm install --save-dev prettier
# npm install @grapecity/wijmo.angular2.all
npm start
