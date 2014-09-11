# Windows Learning
Just basic stuff to making Windows more friendly.

## PowerShell Customization

### Modules

In the PowerShell, execute the command bellow to install a package manager.

```bash
(new-object Net.WebClient).DownloadString("http://psget.net/GetPsGet.ps1") | iex
```

Now, run this to install a module for git. This module displays the current
branch nicely.

```bash
Install-Module posh-git
```

### PATH

To change the default display path, go to the PowerShell Profile file and insert
this code bellow.

```bash
function global:prompt {
   $realLASTEXITCODE = $LASTEXITCODE
   $Host.UI.RawUI.ForegroundColor = $GitPromptSettings.DefaultForegroundColor
   $p = Split-Path -leaf -path (Get-Location)
   Write-Host("~ $p") -nonewline
   Write-VcsStatus
   $global:LASTEXITCODE = $realLASTEXITCODE
   return " $ "
}
```
