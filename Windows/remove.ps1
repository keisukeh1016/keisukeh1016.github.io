$files = @(
    "Bitwarden.lnk"
    "Brave.lnk"
    "DB Browser (SQLCipher).lnk"
    "DB Browser (SQLite).lnk"
    "Discord.lnk"
    "Docker Desktop.lnk"
    "Epic Games Launcher.lnk"
    "FFFTP.lnk"
    "Firefox.lnk"
    "GitHub Desktop.lnk"
    "Google Chrome.lnk"
    "honto.lnk"   
    "HYPER SBI 2.lnk"
    "Kindle.lnk"
    "LINE.lnk"
    "MarketSpeed2.lnk"
    "Microsoft Edge.lnk"
    "Oracle VM VirtualBox.lnk"
    "Postman.lnk"
    "Slack.lnk"
    "TeamViewer.lnk"
    "Thunderbird.lnk"
    "Zoom Workplace.lnk" 
)

# Public
$public = [System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::CommonDesktopDirectory)
$files | 
    ForEach-Object { Join-Path -Path $public -ChildPath $_ } | 
    Where-Object { Test-Path $_ } | 
    Remove-Item

# User
$user = [System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::DesktopDirectory)
$files | 
    ForEach-Object { Join-Path -Path $user -ChildPath $_ } | 
    Where-Object { Test-Path $_ } | 
    Remove-Item