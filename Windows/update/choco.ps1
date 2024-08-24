# Reset Process Path
$Machine = [System.Environment]::GetEnvironmentVariable("Path", [System.EnvironmentVariableTarget]::Machine)
$User = [System.Environment]::GetEnvironmentVariable("Path", [System.EnvironmentVariableTarget]::User)
$Env:Path = "$Machine;$User"

choco --yes upgrade all