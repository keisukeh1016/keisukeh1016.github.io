# Reset Process Path
$Machine = [System.Environment]::GetEnvironmentVariable("Path", [System.EnvironmentVariableTarget]::Machine)
$User = [System.Environment]::GetEnvironmentVariable("Path", [System.EnvironmentVariableTarget]::User)
$Env:Path = "$Machine;$User"

# Install
choco install --yes 7zip
choco install --yes bitwarden
choco install --yes docker-desktop
choco install --yes gh
choco install --yes git
choco install --yes googlechrome
choco install --yes kindle
choco install --yes nvm
choco install --yes postman
choco install --yes sqlitebrowser
choco install --yes tablacus
choco install --yes winmerge

# choco install --yes adobereader
# choco install --yes brave
# choco install --yes chrome-remote-desktop-host
# choco install --yes discord
# choco install --yes epicgameslauncher
# choco install --yes ffftp
# choco install --yes firefox
# choco install --yes github-desktop
# choco install --yes line
# choco install --yes sakuraeditor
# choco install --yes slack
# choco install --yes teamviewer
# choco install --yes thunderbird
# choco install --yes virtualbox
# choco install --yes volta 
# choco install --yes zoom
