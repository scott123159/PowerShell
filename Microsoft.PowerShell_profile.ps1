Set-Alias vim nvim
Set-Alias ll Get-ChildItem

$NvimDirectory = "$env:LOCALAPPDATA\nvim\"
$env:EDITOR = "nvim"

function tree($dir=".") { tree.com /f /a $dir}
function poweroff { shutdown /f /s /t 00 }
function reboot { shutdown /f /r /t 00 }
function rmnvim {
  $NvimDataDirectory = "$env:LOCALAPPDATA\nvim-data\"
  if (Test-Path $NvimDataDirectory) {
    Remove-Item -Recurse -Force $NvimDataDirectory
  }
}
function scoopInstallAll { 
  scoop bucket add extras
  scoop install terminal-icons
  scoop install https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/oh-my-posh.json
}
function scoopUpdateAll { 
  scoop update && scoop update --all && scoop cache rm --all && scoop cleanup --all
}

Import-Module -Name Terminal-Icons

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/tonybaloney.omp.json" | Invoke-Expression
ipconfig /flushdns > $null
