# Reset Process Path
$Machine = [System.Environment]::GetEnvironmentVariable("Path", [System.EnvironmentVariableTarget]::Machine)
$User = [System.Environment]::GetEnvironmentVariable("Path", [System.EnvironmentVariableTarget]::User)
$Env:Path = "$Machine;$User"

# Install
choco install --yes docker-desktop
choco install --yes kindle
choco install --yes nvm
choco install --yes postman
choco install --yes sqlitebrowser
choco install --yes tablacus
choco install --yes winmerge

# choco install --yes slack
# choco install --yes volta 

