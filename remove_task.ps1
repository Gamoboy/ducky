$autorunRegistryPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run"
$autorunRegistryName = "CPUHeatSecurity"

# Supprimer l'entrée du registre pour arrêter le script de se lancer au démarrage
Remove-ItemProperty -Path $autorunRegistryPath -Name $autorunRegistryName