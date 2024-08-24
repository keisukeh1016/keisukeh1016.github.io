@REM PowerShell ExecutionPolicy
powershell.exe -Command "& {Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser}"
powershell.exe -Command "& {Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process}"

@REM powershell.exe -File .\setup.ps1
