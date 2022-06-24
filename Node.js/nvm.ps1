function reloadPath {
  $MachinePath = [System.Environment]::GetEnvironmentVariable("Path", "Machine")
  $UserPath = [System.Environment]::GetEnvironmentVariable("Path", "User")
  $Env:Path = $MachinePath + ";" + $UserPath
}

reloadPath

nvm install 14.19.2
nvm use 14.19.2
