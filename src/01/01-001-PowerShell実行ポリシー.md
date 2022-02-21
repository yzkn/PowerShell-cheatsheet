## PowerShell実行ポリシーの変更

```powershell
# 一時的に許可
Set-ExecutionPolicy RemoteSigned -Scope Process -Force

# ユーザーに対して許可
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
```

| 実行ポリシー | 内容                                                       |
| ------------ | ---------------------------------------------------------- |
| Restricted   | 個々のコマンドは許可、スクリプトは制限される               |
| AllSigned    | 署名されたスクリプトのみ許可                               |
| RemoteSigned | ローカルのスクリプトは許可、リモートは署名されていれば許可 |
| Unrestricted | 全てのスクリプトが制限なし(警告あり)                       |
| Bypass       | 全てのスクリプトが制限なし(警告なし)                       |

### 署名する

```powershell
$targetScriptPath = ".\gen.ps1"

# 証明書作成
$cert = New-SelfSignedCertificate -Subject "CN=PS証明書" -KeyAlgorithm RSA -KeyLength 2048 -Type CodeSigningCert -CertStoreLocation Cert:\CurrentUser\My\ -NotAfter ([datetime]"2099/01/01")
Move-Item "Cert:\CurrentUser\My\$($cert.Thumbprint)" Cert:\CurrentUser\Root

# 署名
$cert = (Get-ChildItem Cert:\CurrentUser\My | ? {$_.Subject -eq "CN=PS証明書"})[0]
Set-AuthenticodeSignature -Cert $cert -Filepath $targetScriptPath
```
