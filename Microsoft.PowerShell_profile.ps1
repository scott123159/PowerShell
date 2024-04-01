Import-Module -Name Terminal-Icons

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/tonybaloney.omp.json" | Invoke-Expression
ipconfig /flushdns > $null

Set-Alias vim nvim
Set-Alias ll Get-ChildItem

$NvimDirectory = "$env:LOCALAPPDATA\nvim\"
$env:EDITOR = "nvim"

function tree { tree.com /f /a}
function poweroff { shutdown /f /s /t 00 }
function reboot { shutdown /f /r /t 00 }
function rmnvim {
  $NvimDataDirectory = "$env:LOCALAPPDATA\nvim-data\"
  if (Test-Path $NvimDataDirectory) {
    Remove-Item -Recurse -Force $NvimDataDirectory
  }
}
