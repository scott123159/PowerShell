Import-Module -Name Terminal-Icons
ipconfig /flushdns > $null
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/tonybaloney.omp.json" | Invoke-Expression
Set-Alias vim nvim
Set-Alias ll Get-ChildItem
$NvimDirectory = "$env:LOCALAPPDATA\nvim\"
function tree { tree.com /f /a}
function poweroff { shutdown /s /t 0 }
function reboot { shutdown /r /t 0 }
