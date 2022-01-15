$AppName = (Get-Date).ToString('expre\s\s-yyyyMMdd-HHmmss')
npx --package "express-generator" --call "express --git --view=pug $AppName"

Set-Location "$AppName"

# npm
npm install
npm start
