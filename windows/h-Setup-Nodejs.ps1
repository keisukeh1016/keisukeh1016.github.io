function reloadPath {
  $MachinePath = [System.Environment]::GetEnvironmentVariable("Path", "Machine")
  $UserPath = [System.Environment]::GetEnvironmentVariable("Path", "User")
  $Env:Path = $MachinePath + ";" + $UserPath
}

# Install nvm-windows
# Set-Location "$Env:USERPROFILE\Downloads"
# Invoke-WebRequest https://github.com/coreybutler/nvm-windows/releases/download/1.1.8/nvm-setup.zip -OutFile .\nvm-setup.zip
# Expand-Archive .\nvm-setup.zip
# Start-Process .\nvm-setup\nvm-setup.exe -ArgumentList "/SILENT" -Wait

reloadPath

# Volta Settings
volta install node@14.18.2
