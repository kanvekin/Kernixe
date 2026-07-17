$link = "https://github.com/kanvekin/Kernixe/releases/latest/download/KernixeCli.exe"

$outfile = "$env:TEMP\Kernixe.exe"

Write-Output "Downloading installer to $outfile"

Invoke-WebRequest -Uri "$link" -OutFile "$outfile"

Write-Output ""

Start-Process -Wait -NoNewWindow -FilePath "$outfile"

# Cleanup
Remove-Item -Force "$outfile"
