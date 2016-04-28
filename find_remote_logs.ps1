Clear-Host
$filetypes = "*.log"
$path = ""
$pattern = Read-Host "Pattern to search for?"
Get-ChildItem -Path $path -Include $filetypes -Recurse | Select-String -Pattern $pattern | Sort-Object -Property @{Expression="Filename";Descending=$true}, @{Expression="LineNumber";Descending=$false} | Out-GridView -Title "Log search" -Wait