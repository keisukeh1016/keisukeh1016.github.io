function reloadProcessPath {
  $Machine = [System.Environment]::GetEnvironmentVariable("Path", [System.EnvironmentVariableTarget]::Machine)
  $User = [System.Environment]::GetEnvironmentVariable("Path", [System.EnvironmentVariableTarget]::User)
  $Env:Path = "$Machine;$User"
}

reloadProcessPath

nvm install 14.19.2
nvm use 14.19.2
