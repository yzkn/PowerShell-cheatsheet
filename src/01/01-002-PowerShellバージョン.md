## PowerShell バージョン

スクリプト内から確認

```powershell
$PSVersionTable
```

```
Name                           Value
----                           -----
PSVersion                      7.2.1
PSEdition                      Core
GitCommitId                    7.2.1
OS                             Microsoft Windows 10.0.22000
Platform                       Win32NT
PSCompatibleVersions           {1.0, 2.0, 3.0, 4.0…}
PSRemotingProtocolVersion      2.3
SerializationVersion           1.1.0.1
WSManStackVersion              3.0
```

```powershell
$PSVersionTable["PSVersion"].Major

# バージョンが7未満ならインストーラーをダウンロードして実行
if ($PSVersionTable["PSVersion"].Major -lt 7) {
    Invoke-Expression "& { $(Invoke-RestMethod https://aka.ms/install-powershell.ps1) } -UseMSI"
    exit
}
```

```
7
```

ターミナルから確認

```powershell
$ pwsh --version
```
