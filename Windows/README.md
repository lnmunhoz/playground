# Windows Learning
Just basic stuff to making Windows more friendly.

## PowerShell Customization
In the PowerShell, execute the command bellow to install a package manager.

```bash
(new-object Net.WebClient).DownloadString("http://psget.net/GetPsGet.ps1") | iex
```

Now, run this to install a module for git. This module displays the current
branch nicely.

```bash
Install-Module posh-git
```
