<!-- TOC -->

- [おまじない](#%E3%81%8A%E3%81%BE%E3%81%98%E3%81%AA%E3%81%84)
  - [PowerShell実行ポリシーの変更](#powershell%E5%AE%9F%E8%A1%8C%E3%83%9D%E3%83%AA%E3%82%B7%E3%83%BC%E3%81%AE%E5%A4%89%E6%9B%B4)
    - [署名する](#%E7%BD%B2%E5%90%8D%E3%81%99%E3%82%8B)
  - [PowerShell バージョン](#powershell-%E3%83%90%E3%83%BC%E3%82%B8%E3%83%A7%E3%83%B3)
  - [ヘルプ](#%E3%83%98%E3%83%AB%E3%83%97)
- [文法](#%E6%96%87%E6%B3%95)
  - [コメント](#%E3%82%B3%E3%83%A1%E3%83%B3%E3%83%88)
  - [コマンドレット](#%E3%82%B3%E3%83%9E%E3%83%B3%E3%83%89%E3%83%AC%E3%83%83%E3%83%88)
    - [引数の指定](#%E5%BC%95%E6%95%B0%E3%81%AE%E6%8C%87%E5%AE%9A)
    - [動詞の完全な一覧](#%E5%8B%95%E8%A9%9E%E3%81%AE%E5%AE%8C%E5%85%A8%E3%81%AA%E4%B8%80%E8%A6%A7)
  - [パイプライン](#%E3%83%91%E3%82%A4%E3%83%97%E3%83%A9%E3%82%A4%E3%83%B3)
    - [配列](#%E9%85%8D%E5%88%97)
    - [表示](#%E8%A1%A8%E7%A4%BA)
    - [Tee](#tee)
  - [リテラル](#%E3%83%AA%E3%83%86%E3%83%A9%E3%83%AB)
    - [数値](#%E6%95%B0%E5%80%A4)
    - [文字列](#%E6%96%87%E5%AD%97%E5%88%97)
      - [エスケープ](#%E3%82%A8%E3%82%B9%E3%82%B1%E3%83%BC%E3%83%97)
      - [変数展開](#%E5%A4%89%E6%95%B0%E5%B1%95%E9%96%8B)
      - [式展開](#%E5%BC%8F%E5%B1%95%E9%96%8B)
      - [ヒアドキュメント](#%E3%83%92%E3%82%A2%E3%83%89%E3%82%AD%E3%83%A5%E3%83%A1%E3%83%B3%E3%83%88)
  - [演算子](#%E6%BC%94%E7%AE%97%E5%AD%90)
    - [算術演算子](#%E7%AE%97%E8%A1%93%E6%BC%94%E7%AE%97%E5%AD%90)
    - [比較演算子](#%E6%AF%94%E8%BC%83%E6%BC%94%E7%AE%97%E5%AD%90)
    - [論理演算子](#%E8%AB%96%E7%90%86%E6%BC%94%E7%AE%97%E5%AD%90)
    - [ビット演算子](#%E3%83%93%E3%83%83%E3%83%88%E6%BC%94%E7%AE%97%E5%AD%90)
    - [文字列演算子](#%E6%96%87%E5%AD%97%E5%88%97%E6%BC%94%E7%AE%97%E5%AD%90)
    - [](#)
    - [](#)
  - [変数](#%E5%A4%89%E6%95%B0)
    - [型を指定](#%E5%9E%8B%E3%82%92%E6%8C%87%E5%AE%9A)
    - [スコープ](#%E3%82%B9%E3%82%B3%E3%83%BC%E3%83%97)
    - [自動変数・設定変数](#%E8%87%AA%E5%8B%95%E5%A4%89%E6%95%B0%E3%83%BB%E8%A8%AD%E5%AE%9A%E5%A4%89%E6%95%B0)
    - [設定変数のみ一覧化](#%E8%A8%AD%E5%AE%9A%E5%A4%89%E6%95%B0%E3%81%AE%E3%81%BF%E4%B8%80%E8%A6%A7%E5%8C%96)
    - [配列](#%E9%85%8D%E5%88%97)
      - [多次元配列](#%E5%A4%9A%E6%AC%A1%E5%85%83%E9%85%8D%E5%88%97)
      - [連想配列ハッシュテーブル](#%E9%80%A3%E6%83%B3%E9%85%8D%E5%88%97%E3%83%8F%E3%83%83%E3%82%B7%E3%83%A5%E3%83%86%E3%83%BC%E3%83%96%E3%83%AB)
  - [画面出力](#%E7%94%BB%E9%9D%A2%E5%87%BA%E5%8A%9B)
    - [デバッグ出力](#%E3%83%87%E3%83%90%E3%83%83%E3%82%B0%E5%87%BA%E5%8A%9B)
      - [Write-Error](#write-error)
      - [その他のログレベル](#%E3%81%9D%E3%81%AE%E4%BB%96%E3%81%AE%E3%83%AD%E3%82%B0%E3%83%AC%E3%83%99%E3%83%AB)
    - [プログレスバー](#%E3%83%97%E3%83%AD%E3%82%B0%E3%83%AC%E3%82%B9%E3%83%90%E3%83%BC)
  - [プロセス](#%E3%83%97%E3%83%AD%E3%82%BB%E3%82%B9)
    - [管理者権限で実行](#%E7%AE%A1%E7%90%86%E8%80%85%E6%A8%A9%E9%99%90%E3%81%A7%E5%AE%9F%E8%A1%8C)
    - [待機](#%E5%BE%85%E6%A9%9F)
      - [キー押下を待機Pause](#%E3%82%AD%E3%83%BC%E6%8A%BC%E4%B8%8B%E3%82%92%E5%BE%85%E6%A9%9Fpause)
      - [一定時間待機Sleep, Wait](#%E4%B8%80%E5%AE%9A%E6%99%82%E9%96%93%E5%BE%85%E6%A9%9Fsleep-wait)
  - [制御構文](#%E5%88%B6%E5%BE%A1%E6%A7%8B%E6%96%87)
    - [条件分岐](#%E6%9D%A1%E4%BB%B6%E5%88%86%E5%B2%90)
      - [if文](#if%E6%96%87)
      - [TRUEと評価される値](#true%E3%81%A8%E8%A9%95%E4%BE%A1%E3%81%95%E3%82%8C%E3%82%8B%E5%80%A4)
      - [FALSEと評価される値](#false%E3%81%A8%E8%A9%95%E4%BE%A1%E3%81%95%E3%82%8C%E3%82%8B%E5%80%A4)
      - [switch文](#switch%E6%96%87)
    - [ループ](#%E3%83%AB%E3%83%BC%E3%83%97)
      - [ループ文](#%E3%83%AB%E3%83%BC%E3%83%97%E6%96%87)
      - [ループ制御文](#%E3%83%AB%E3%83%BC%E3%83%97%E5%88%B6%E5%BE%A1%E6%96%87)
    - [例外処理](#%E4%BE%8B%E5%A4%96%E5%87%A6%E7%90%86)
      - [try節](#try%E7%AF%80)
      - [trap節](#trap%E7%AF%80)
  - [関数](#%E9%96%A2%E6%95%B0)
    - [関数の基本形](#%E9%96%A2%E6%95%B0%E3%81%AE%E5%9F%BA%E6%9C%AC%E5%BD%A2)
    - [引数](#%E5%BC%95%E6%95%B0)
      - [引数の取り方](#%E5%BC%95%E6%95%B0%E3%81%AE%E5%8F%96%E3%82%8A%E6%96%B9)
      - [引数の型を指定](#%E5%BC%95%E6%95%B0%E3%81%AE%E5%9E%8B%E3%82%92%E6%8C%87%E5%AE%9A)
      - [引数の参照渡し](#%E5%BC%95%E6%95%B0%E3%81%AE%E5%8F%82%E7%85%A7%E6%B8%A1%E3%81%97)
      - [引数の既定値](#%E5%BC%95%E6%95%B0%E3%81%AE%E6%97%A2%E5%AE%9A%E5%80%A4)
- [システム情報](#%E3%82%B7%E3%82%B9%E3%83%86%E3%83%A0%E6%83%85%E5%A0%B1)
  - [サービス](#%E3%82%B5%E3%83%BC%E3%83%93%E3%82%B9)
- [日付処理](#%E6%97%A5%E4%BB%98%E5%87%A6%E7%90%86)
- [ファイル操作](#%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E6%93%8D%E4%BD%9C)
  - [カレントディレクトリ](#%E3%82%AB%E3%83%AC%E3%83%B3%E3%83%88%E3%83%87%E3%82%A3%E3%83%AC%E3%82%AF%E3%83%88%E3%83%AA)
  - [ファイルフォルダの新規作成](#%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%83%95%E3%82%A9%E3%83%AB%E3%83%80%E3%81%AE%E6%96%B0%E8%A6%8F%E4%BD%9C%E6%88%90)
    - [touch](#touch)
  - [ファイルフォルダの削除](#%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%83%95%E3%82%A9%E3%83%AB%E3%83%80%E3%81%AE%E5%89%8A%E9%99%A4)
  - [ファイルフォルダのコピーと移動](#%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%83%95%E3%82%A9%E3%83%AB%E3%83%80%E3%81%AE%E3%82%B3%E3%83%94%E3%83%BC%E3%81%A8%E7%A7%BB%E5%8B%95)
  - [テキストファイル](#%E3%83%86%E3%82%AD%E3%82%B9%E3%83%88%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB)
    - [行ごとに読込み](#%E8%A1%8C%E3%81%94%E3%81%A8%E3%81%AB%E8%AA%AD%E8%BE%BC%E3%81%BF)
    - [書出し](#%E6%9B%B8%E5%87%BA%E3%81%97)
  - [CSVファイル](#csv%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB)
    - [読込み](#%E8%AA%AD%E8%BE%BC%E3%81%BF)
    - [書出し](#%E6%9B%B8%E5%87%BA%E3%81%97)
  - [設定ファイル.ini](#%E8%A8%AD%E5%AE%9A%E3%83%95%E3%82%A1%E3%82%A4%E3%83%ABini)
    - [読込み](#%E8%AA%AD%E8%BE%BC%E3%81%BF)
  - [構成ファイルWeb.config](#%E6%A7%8B%E6%88%90%E3%83%95%E3%82%A1%E3%82%A4%E3%83%ABwebconfig)
    - [読み書き](#%E8%AA%AD%E3%81%BF%E6%9B%B8%E3%81%8D)
  - [XMLファイル](#xml%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB)
    - [読込み](#%E8%AA%AD%E8%BE%BC%E3%81%BF)
    - [書出し](#%E6%9B%B8%E5%87%BA%E3%81%97)
  - [CSVファイル](#csv%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB)
    - [読込み](#%E8%AA%AD%E8%BE%BC%E3%81%BF)
  - [ログ出力](#%E3%83%AD%E3%82%B0%E5%87%BA%E5%8A%9B)
    - [ログファイル](#%E3%83%AD%E3%82%B0%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB)
    - [イベントログ](#%E3%82%A4%E3%83%99%E3%83%B3%E3%83%88%E3%83%AD%E3%82%B0)
- [ネットワーク](#%E3%83%8D%E3%83%83%E3%83%88%E3%83%AF%E3%83%BC%E3%82%AF)
  - [ping](#ping)
  - [ARP](#arp)

<!-- /TOC -->

# おまじない

<a id="markdown-%E3%81%8A%E3%81%BE%E3%81%98%E3%81%AA%E3%81%84" name="%E3%81%8A%E3%81%BE%E3%81%98%E3%81%AA%E3%81%84"></a>

## PowerShell実行ポリシーの変更

<a id="markdown-powershell%E5%AE%9F%E8%A1%8C%E3%83%9D%E3%83%AA%E3%82%B7%E3%83%BC%E3%81%AE%E5%A4%89%E6%9B%B4" name="powershell%E5%AE%9F%E8%A1%8C%E3%83%9D%E3%83%AA%E3%82%B7%E3%83%BC%E3%81%AE%E5%A4%89%E6%9B%B4"></a>

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

<a id="markdown-%E7%BD%B2%E5%90%8D%E3%81%99%E3%82%8B" name="%E7%BD%B2%E5%90%8D%E3%81%99%E3%82%8B"></a>

```powershell
$targetScriptPath = ".\gen.ps1"

# 証明書作成
$cert = New-SelfSignedCertificate -Subject "CN=PS証明書" -KeyAlgorithm RSA -KeyLength 2048 -Type CodeSigningCert -CertStoreLocation Cert:\CurrentUser\My\ -NotAfter ([datetime]"2099/01/01")
Move-Item "Cert:\CurrentUser\My\$($cert.Thumbprint)" Cert:\CurrentUser\Root

# 署名
$cert = (Get-ChildItem Cert:\CurrentUser\My | ? {$_.Subject -eq "CN=PS証明書"})[0]
Set-AuthenticodeSignature -Cert $cert -Filepath $targetScriptPath
```

## PowerShell バージョン

<a id="markdown-powershell-%E3%83%90%E3%83%BC%E3%82%B8%E3%83%A7%E3%83%B3" name="powershell-%E3%83%90%E3%83%BC%E3%82%B8%E3%83%A7%E3%83%B3"></a>

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
pwsh --version
```

## ヘルプ

<a id="markdown-%E3%83%98%E3%83%AB%E3%83%97" name="%E3%83%98%E3%83%AB%E3%83%97"></a>

```powershell
# Get-Help <Command>
Get-Help Get-ChildItem
```

# 文法

<a id="markdown-%E6%96%87%E6%B3%95" name="%E6%96%87%E6%B3%95"></a>

## コメント

<a id="markdown-%E3%82%B3%E3%83%A1%E3%83%B3%E3%83%88" name="%E3%82%B3%E3%83%A1%E3%83%B3%E3%83%88"></a>

```powershell
# コメント

<#

範囲

#>
```

## コマンドレット

<a id="markdown-%E3%82%B3%E3%83%9E%E3%83%B3%E3%83%89%E3%83%AC%E3%83%83%E3%83%88" name="%E3%82%B3%E3%83%9E%E3%83%B3%E3%83%89%E3%83%AC%E3%83%83%E3%83%88"></a>

```powershell
Get-Command # コマンドレット一覧
Get-Service # サービス一覧
get-service # 大小文字の区別はない
```

### 引数の指定

<a id="markdown-%E5%BC%95%E6%95%B0%E3%81%AE%E6%8C%87%E5%AE%9A" name="%E5%BC%95%E6%95%B0%E3%81%AE%E6%8C%87%E5%AE%9A"></a>

```powershell
$iyo = 'i'

Write-Host foo
Write-Host "b a r" # 1つの引数として指定
Write-Host "-hoge" # オプションではなく文字列として指定
Write-Host p$iyo   # 変数展開
```

> foo
>
> b a r
>
> -hoge
>
> pi

### 動詞の完全な一覧

<a id="markdown-%E5%8B%95%E8%A9%9E%E3%81%AE%E5%AE%8C%E5%85%A8%E3%81%AA%E4%B8%80%E8%A6%A7" name="%E5%8B%95%E8%A9%9E%E3%81%AE%E5%AE%8C%E5%85%A8%E3%81%AA%E4%B8%80%E8%A6%A7"></a>

```powershell
Get-Verb
```

```

Verb        AliasPrefix Group          Description
----        ----------- -----          -----------
Add         a           Common         Adds a resource to a container, or attaches an item to another item
Clear       cl          Common         Removes all the resources from a container but does not delete the container
Close       cs          Common         Changes the state of a resource to make it inaccessible, unavailable, or unusable
Copy        cp          Common         Copies a resource to another name or to another container
Enter       et          Common         Specifies an action that allows the user to move into a resource
Exit        ex          Common         Sets the current environment or context to the most recently used context
Find        fd          Common         Looks for an object in a container that is unknown, implied, optional, or specified
Format      f           Common         Arranges objects in a specified form or layout
Get         g           Common         Specifies an action that retrieves a resource
Hide        h           Common         Makes a resource undetectable
Join        j           Common         Combines resources into one resource
Lock        lk          Common         Secures a resource
Move        m           Common         Moves a resource from one location to another
New         n           Common         Creates a resource
Open        op          Common         Changes the state of a resource to make it accessible, available, or usable
Optimize    om          Common         Increases the effectiveness of a resource
Push        pu          Common         Adds an item to the top of a stack
Pop         pop         Common         Removes an item from the top of a stack
Redo        re          Common         Resets a resource to the state that was undone
Remove      r           Common         Deletes a resource from a container
Rename      rn          Common         Changes the name of a resource
Reset       rs          Common         Sets a resource back to its original state
Resize      rz          Common         Changes the size of a resource
Search      sr          Common         Creates a reference to a resource in a container
Select      sc          Common         Locates a resource in a container
Set         s           Common         Replaces data on an existing resource or creates a resource that contains some data
Show        sh          Common         Makes a resource visible to the user
Skip        sk          Common         Bypasses one or more resources or points in a sequence
Split       sl          Common         Separates parts of a resource
Step        st          Common         Moves to the next point or resource in a sequence
Switch      sw          Common         Specifies an action that alternates between two resources, such as to change between two locations, responsibilities, or states
Undo        un          Common         Sets a resource to its previous state
Unlock      uk          Common         Releases a resource that was locked
Watch       wc          Common         Continually inspects or monitors a resource for changes
Connect     cc          Communications Creates a link between a source and a destination
Disconnect  dc          Communications Breaks the link between a source and a destination
Read        rd          Communications Acquires information from a source
Receive     rc          Communications Accepts information sent from a source
Send        sd          Communications Delivers information to a destination
Write       wr          Communications Adds information to a target
Backup      ba          Data           Stores data by replicating it
Checkpoint  ch          Data           Creates a snapshot of the current state of the data or of its configuration
Compare     cr          Data           Evaluates the data from one resource against the data from another resource
Compress    cm          Data           Compacts the data of a resource
Convert     cv          Data           Changes the data from one representation to another when the cmdlet supports bidirectional conversion or when the cmdlet supports conversio…
ConvertFrom cf          Data           Converts one primary type of input (the cmdlet noun indicates the input) to one or more supported output types
ConvertTo   ct          Data           Converts from one or more types of input to a primary output type (the cmdlet noun indicates the output type)
Dismount    dm          Data           Detaches a named entity from a location
Edit        ed          Data           Modifies existing data by adding or removing content
Expand      en          Data           Restores the data of a resource that has been compressed to its original state
Export      ep          Data           Encapsulates the primary input into a persistent data store, such as a file, or into an interchange format
Group       gp          Data           Arranges or associates one or more resources
Import      ip          Data           Creates a resource from data that is stored in a persistent data store (such as a file) or in an interchange format
Initialize  in          Data           Prepares a resource for use, and sets it to a default state
Limit       l           Data           Applies constraints to a resource
Merge       mg          Data           Creates a single resource from multiple resources
Mount       mt          Data           Attaches a named entity to a location
Out         o           Data           Sends data out of the environment
Publish     pb          Data           Makes a resource available to others
Restore     rr          Data           Sets a resource to a predefined state, such as a state set by Checkpoint
Save        sv          Data           Preserves data to avoid loss
Sync        sy          Data           Assures that two or more resources are in the same state
Unpublish   ub          Data           Makes a resource unavailable to others
Update      ud          Data           Brings a resource up-to-date to maintain its state, accuracy, conformance, or compliance
Debug       db          Diagnostic     Examines a resource to diagnose operational problems
Measure     ms          Diagnostic     Identifies resources that are consumed by a specified operation, or retrieves statistics about a resource
Ping        pi          Diagnostic     Use the Test verb
Repair      rp          Diagnostic     Restores a resource to a usable condition
Resolve     rv          Diagnostic     Maps a shorthand representation of a resource to a more complete representation
Test        t           Diagnostic     Verifies the operation or consistency of a resource
Trace       tr          Diagnostic     Tracks the activities of a resource
Approve     ap          Lifecycle      Confirms or agrees to the status of a resource or process
Assert      as          Lifecycle      Affirms the state of a resource
Build       bd          Lifecycle      Creates an artifact (usually a binary or document) out of some set of input files (usually source code or declarative documents)
Complete    cmp         Lifecycle      Concludes an operation
Confirm     cn          Lifecycle      Acknowledges, verifies, or validates the state of a resource or process
Deny        dn          Lifecycle      Refuses, objects, blocks, or opposes the state of a resource or process
Deploy      dp          Lifecycle      Sends an application, website, or solution to a remote target[s] in such a way that a consumer of that solution can access it after deploym…
Disable     d           Lifecycle      Configures a resource to an unavailable or inactive state
Enable      e           Lifecycle      Configures a resource to an available or active state
Install     is          Lifecycle      Places a resource in a location, and optionally initializes it
Invoke      i           Lifecycle      Performs an action, such as running a command or a method
Register    rg          Lifecycle      Creates an entry for a resource in a repository such as a database
Request     rq          Lifecycle      Asks for a resource or asks for permissions
Restart     rt          Lifecycle      Stops an operation and then starts it again
Resume      ru          Lifecycle      Starts an operation that has been suspended
Start       sa          Lifecycle      Initiates an operation
Stop        sp          Lifecycle      Discontinues an activity
Submit      sb          Lifecycle      Presents a resource for approval
Suspend     ss          Lifecycle      Pauses an activity
Uninstall   us          Lifecycle      Removes a resource from an indicated location
Unregister  ur          Lifecycle      Removes the entry for a resource from a repository
Wait        w           Lifecycle      Pauses an operation until a specified event occurs
Use         u           Other          Uses or includes a resource to do something
Block       bl          Security       Restricts access to a resource
Grant       gr          Security       Allows access to a resource
Protect     pt          Security       Safeguards a resource from attack or loss
Revoke      rk          Security       Specifies an action that does not allow access to a resource
Unblock     ul          Security       Removes restrictions to a resource
Unprotect   up          Security       Removes safeguards from a resource that were added to prevent it from attack or loss
```

## パイプライン

<a id="markdown-%E3%83%91%E3%82%A4%E3%83%97%E3%83%A9%E3%82%A4%E3%83%B3" name="%E3%83%91%E3%82%A4%E3%83%97%E3%83%A9%E3%82%A4%E3%83%B3"></a>

### 配列

<a id="markdown-%E9%85%8D%E5%88%97" name="%E9%85%8D%E5%88%97"></a>

```powershell
# 0..4 | ForEach-Object {
0..4 | % {
    if ($_ -gt 2) {
        return # スクリプトブロック内なので、continueではなくreturn
    }
    $_
}
```

> 0
>
> 1
>
> 2

```powershell
0..5 + 3..8 | Sort-Object | Get-Unique
```

> 0
>
> 1
>
> 2
>
> 3
>
> 4
>
> 5
>
> 6
>
> 7
>
> 8

```powershell
0..4 | Select-Object -First 2
0..4 | Select-Object -Last 2
```

> 0
>
> 1

> 3
>
> 4

```powershell
0..4 | Sort-Object
```

> 1
>
> 2
>
> 3
>
> 4

```powershell
# 0..4 | Where-Object { $_ -lt 2 }
0..4 | ? { $_ -lt 2 }
```

> 0
>
> 1

### 表示

<a id="markdown-%E8%A1%A8%E7%A4%BA" name="%E8%A1%A8%E7%A4%BA"></a>

```powershell
# すべてのプロパティ
Get-ChildItem | Select-Object *

Get-ChildItem | Format-List
Get-ChildItem | Format-List Name, Length, Mode

Get-ChildItem | Format-Table
Get-ChildItem | Format-Table Name, Length, Mode

Get-ChildItem | Format-Wide
Get-ChildItem | Format-Wide Name -Column 1
```

### Tee

<a id="markdown-tee" name="tee"></a>

ファイルまたは変数にコマンド出力を保存しつつ標準出力

```powershell
Get-ChildItem | Tee-Object -Variable fileList

$fileList
```

```powershell
Get-ChildItem | Tee-Object -FilePath "fileList.txt" -Append
```

## リテラル

<a id="markdown-%E3%83%AA%E3%83%86%E3%83%A9%E3%83%AB" name="%E3%83%AA%E3%83%86%E3%83%A9%E3%83%AB"></a>

### 数値

<a id="markdown-%E6%95%B0%E5%80%A4" name="%E6%95%B0%E5%80%A4"></a>

```powershell
123
0x10
1KB
10MB
```

> 123
>
> 16
>
> 1024
>
> 10485760

### 文字列

<a id="markdown-%E6%96%87%E5%AD%97%E5%88%97" name="%E6%96%87%E5%AD%97%E5%88%97"></a>

```powershell
'Lorem ipsum'
"Lorem ipsum"
```

> Lorem ipsum
>
> Lorem ipsum

#### エスケープ

<a id="markdown-%E3%82%A8%E3%82%B9%E3%82%B1%E3%83%BC%E3%83%97" name="%E3%82%A8%E3%82%B9%E3%82%B1%E3%83%BC%E3%83%97"></a>

```powershell
''''
# '`'' ←これだけNG

'"'
""""
"`""

'`'
"``"

"`$PSHOME"
```

#### 変数展開

<a id="markdown-%E5%A4%89%E6%95%B0%E5%B1%95%E9%96%8B" name="%E5%A4%89%E6%95%B0%E5%B1%95%E9%96%8B"></a>

```powershell
$ipsum  = "ipsum"

'Lorem $ipsum'
"Lorem $ipsum"
```

> Lorem $ipsum
>
> Lorem ipsum

#### 式展開

<a id="markdown-%E5%BC%8F%E5%B1%95%E9%96%8B" name="%E5%BC%8F%E5%B1%95%E9%96%8B"></a>

```powershell
"Lorem$('L' + 'o' * 3)ipsum"
```

> LoremLoooipsum

#### ヒアドキュメント

<a id="markdown-%E3%83%92%E3%82%A2%E3%83%89%E3%82%AD%E3%83%A5%E3%83%A1%E3%83%B3%E3%83%88" name="%E3%83%92%E3%82%A2%E3%83%89%E3%82%AD%E3%83%A5%E3%83%A1%E3%83%B3%E3%83%88"></a>

```powershell
$ipsum  = "ipsum"

@'
Lorem
$ipsum
'@

@"
Lorem
$ipsum
"@
```

> Lorem
>
> $ipsum
>
> Lorem
>
> ipsum

## 演算子

<a id="markdown-%E6%BC%94%E7%AE%97%E5%AD%90" name="%E6%BC%94%E7%AE%97%E5%AD%90"></a>

### 算術演算子

<a id="markdown-%E7%AE%97%E8%A1%93%E6%BC%94%E7%AE%97%E5%AD%90" name="%E7%AE%97%E8%A1%93%E6%BC%94%E7%AE%97%E5%AD%90"></a>

| 演算子 | 比較内容       |
| :----- | :------------- |
| +      | 和             |
| ++     | インクリメント |
| -      | 差             |
| --     | デクリメント   |
| *      | 積             |
| /      | 商             |
| %      | 剰余           |

冪乗には関数Powを用いる

### 比較演算子

<a id="markdown-%E6%AF%94%E8%BC%83%E6%BC%94%E7%AE%97%E5%AD%90" name="%E6%AF%94%E8%BC%83%E6%BC%94%E7%AE%97%E5%AD%90"></a>

| 演算子       | 比較内容                                |
| :----------- | :-------------------------------------- |
| -eq          | 等しい                                  |
| -ne          | 等しくない                              |
| -gt          | より大きい                              |
| -ge          | 以上                                    |
| -le          | 以下                                    |
| -lt          | より小さい                              |
| -contains    | 含む ( `"abc", "def" -contains "def"` ) |
| -notcontains | 含まない                                |
| -in          | 含む ( `"def" -in "abc", "def"` )       |
| -notin       | 含まない                                |
| -is          | 型が等しい                              |
| -isnot       | 型が等しくない                          |

```powershell
$a = 1
$b = "1"
$a -is [int]        # True
$a -is $b.GetType() # False
```

### 論理演算子

<a id="markdown-%E8%AB%96%E7%90%86%E6%BC%94%E7%AE%97%E5%AD%90" name="%E8%AB%96%E7%90%86%E6%BC%94%E7%AE%97%E5%AD%90"></a>

| 演算子 | 比較内容     |
| :----- | :----------- |
| -and   | 積(かつ)     |
| -or    | 和(または)   |
| -not   | 否定         |
| -xor   | 排他的論理和 |

### ビット演算子

<a id="markdown-%E3%83%93%E3%83%83%E3%83%88%E6%BC%94%E7%AE%97%E5%AD%90" name="%E3%83%93%E3%83%83%E3%83%88%E6%BC%94%E7%AE%97%E5%AD%90"></a>

| 演算子 | 比較内容     |
| :----- | :----------- |
| -band  | 積(かつ)     |
| -bor   | 和(または)   |
| -bnot  | 否定         |
| -bxor  | 排他的論理和 |

### 文字列演算子

<a id="markdown-%E6%96%87%E5%AD%97%E5%88%97%E6%BC%94%E7%AE%97%E5%AD%90" name="%E6%96%87%E5%AD%97%E5%88%97%E6%BC%94%E7%AE%97%E5%AD%90"></a>

| 演算子             | 比較内容                                                       |
| :----------------- | :------------------------------------------------------------- |
| +                  | 結合                                                           |
| *                  | 繰り返し                                                       |
| -f                 | フォーマット                                                   |
| -like              | ワイルドカード(*, ?)による文字列比較                           |
| -notlike           | 否定形                                                         |
| -match             | 正規表現による文字列比較                                       |
| -notmatch          | 否定形                                                         |
| -replace -ireplace | 正規表現を使用して置換(大小文字を区別しない; Case insensitive) |
| -creplace          | 正規表現を使用して置換(大小文字を区別する; Case-sensitive)     |

※ -replace 演算子は、Replace()メソッドとは異なり正規表現で置換する

```powershell
"PowerShell" -like    "*shell"           # True
"PowerShell" -like    "Power?hell"       # True
"PowerShell" -like    "Power[p-w]hell"   # True
"PowerShell", "Server" -like "*shell"    # PowerShell
"PowerShell", "Server" -notlike "*shell" # Server

"PowerShell" -match 'shell'              # True
"PowerShell" -like  'shell'              # False
"PowerShell" -match    '^Power\w+'       # True
'bag'        -notmatch 'b[iou]g'         # True

"Bag", "Beg", "Big", "Bog", "Bug"  -match 'b[iou]g'    # Big, Bog, Bug
"Bag", "Beg", "Big", "Bog", "Bug"  -notmatch 'b[iou]g' # Bag, Beg

'5.72' -replace '(.+)', '$ $1' # $ 5.72
'5.72' -replace '(.+)', '$$$1' # $5.72
'5.72' -replace '(.+)', '$$1'  # $1

"B1","B2","B3","B4","B5" -replace "B", 'a'
# a1
# a2
# a3
# a4
# a5
```

```powershell
"{0}"       -f 1.41421356, 1.7320508 # 1.41421356
"{0} {1}"   -f 1.41421356, 1.7320508 # 1.41421356 1.7320508

"|{0,20}|"  -f 1.41421356 # |          1.41421356|
"|{0,-20}|" -f 1.41421356 # |1.41421356          |

"{0:0.0000000}"     -f 1.41421356 # 1.4142136 (四捨五入)
"{0:00.0000000000}" -f 1.41421356 # 01.4142135600

"{0:#.#######}"     -f 1.41421356 # 1.4142136 (四捨五入)
"{0:##.##########}" -f 1.41421356 # 1.41421356

"{0:N}"  -f 1234.567 # 1,234.57
"{0:N0}" -f 1234.567 # 1,235
"{0:N1}" -f 1234.567 # 1,234.6
```

###

```powershell
```

###

```powershell
```

## 変数

<a id="markdown-%E5%A4%89%E6%95%B0" name="%E5%A4%89%E6%95%B0"></a>

```powershell
$a = 1
$b = $c = $a

New-Variable -name a
```

### 型を指定

<a id="markdown-%E5%9E%8B%E3%82%92%E6%8C%87%E5%AE%9A" name="%E5%9E%8B%E3%82%92%E6%8C%87%E5%AE%9A"></a>

```powershell
$a = 1 # 型を指定しなければObject型

# 明示的に型を指定
[byte]$val = 1
[double]$val = 0
[int]$val = 3
[string]$val = "4"
```

### スコープ

<a id="markdown-%E3%82%B9%E3%82%B3%E3%83%BC%E3%83%97" name="%E3%82%B9%E3%82%B3%E3%83%BC%E3%83%97"></a>

| スコープ | 内容                 |
| :------- | :------------------- |
| private  | ブロック内           |
| local    | ブロックと子ブロック |
| script   | ファイル内           |
| global   | ファイル外           |

### 自動変数・設定変数

<a id="markdown-%E8%87%AA%E5%8B%95%E5%A4%89%E6%95%B0%E3%83%BB%E8%A8%AD%E5%AE%9A%E5%A4%89%E6%95%B0" name="%E8%87%AA%E5%8B%95%E5%A4%89%E6%95%B0%E3%83%BB%E8%A8%AD%E5%AE%9A%E5%A4%89%E6%95%B0"></a>

```powershell
Get-Variable
```

```powershell
Get-Variable | Get-Member -MemberType Properties
```

| 変数名                      | 内容                                                 |
| --------------------------- | ---------------------------------------------------- |
| $env:ENVVAR                 | 環境変数                                             |
|                             |                                                      |
| _ ( PSItem と同じ)          | パイプラインオブジェクトの現在のオブジェクト         |
| ?                           | 最後のコマンドの実行状態(リターンコード)             |
| ^                           | セッションによって受信された最後の行の最初のトークン |
| $                           | セッションによって受信された最後の行の最後のトークン |
| args                        | コマンドライン引数                                   |
| cert                        |                                                      |
| ConfirmPreference           |                                                      |
| DebugPreference             |                                                      |
| EnabledExperimentalFeatures |                                                      |
| Error                       | 最後のエラー                                         |
| ErrorActionPreference       |                                                      |
| ErrorView                   |                                                      |
| ExecutionContext            |                                                      |
| false                       | False                                                |
| FormatEnumerationLimit      |                                                      |
| HOME                        | ホームディレクトリのパス                             |
| Host                        | ホストアプリケーションを表すオブジェクト             |
| InformationPreference       |                                                      |
| input                       | 関数に渡される入力                                   |
| IsCoreCLR                   |                                                      |
| IsLinux                     |                                                      |
| IsMacOS                     |                                                      |
| IsWindows                   |                                                      |
| MaximumHistoryCount         |                                                      |
| MyInvocation                | 現在のコマンドに関する情報                           |
| NestedPromptLevel           |                                                      |
| null                        | NULL                                                 |
| OutputEncoding              |                                                      |
| PID                         | ホストしているプロセスのプロセス識別子 (PID)         |
| profile                     | PowerShell プロファイルのパス                        |
| ProgressPreference          |                                                      |
| PSBoundParameters           |                                                      |
| PSCommandPath               |                                                      |
| PSCulture                   |                                                      |
| PSDefaultParameterValues    |                                                      |
| PSEdition                   |                                                      |
| psEditor                    |                                                      |
| PSEmailServer               |                                                      |
| PSHOME                      | PowerShell のインストールディレクトリのパス          |
| PSScriptRoot                | スクリプトの実行元のディレクトリ                     |
| PSSessionApplicationName    |                                                      |
| PSSessionConfigurationName  |                                                      |
| PSSessionOption             |                                                      |
| PSStyle                     |                                                      |
| PSUICulture                 |                                                      |
| PSVersionTable              | PowerShell のバージョン                              |
| PWD                         | カレントディレクトリ                                 |
| ShellId                     |                                                      |
| StackTrace                  |                                                      |
| targetScriptPath            |                                                      |
| true                        | True                                                 |
| VerbosePreference           |                                                      |
| WarningPreference           |                                                      |
| WhatIfPreference            |                                                      |

### 設定変数のみ一覧化

<a id="markdown-%E8%A8%AD%E5%AE%9A%E5%A4%89%E6%95%B0%E3%81%AE%E3%81%BF%E4%B8%80%E8%A6%A7%E5%8C%96" name="%E8%A8%AD%E5%AE%9A%E5%A4%89%E6%95%B0%E3%81%AE%E3%81%BF%E4%B8%80%E8%A6%A7%E5%8C%96"></a>

```powershell
Get-Variable |
  Where-Object {
    $_.Name -clike '*Preference' -or
    ($_.Attributes -and $_.Options -notcontains 'ReadOnly')
  } | % Name
```

### 配列

<a id="markdown-%E9%85%8D%E5%88%97" name="%E9%85%8D%E5%88%97"></a>

```powershell
# 配列の宣言
$array1 = @()
[int[]]$array2

# 配列への代入
$array3 = @(1)
$array3 = ,1

$array4 = @(2,3,4)
$array4 = @(..4)
$array4 = 2,3,4
$array4 = ..4

# 配列の結合
$array = $array1 + $array2

# 要素の追加と変更
$array5 = @()
$array5[0] = 555 # これはSystem.IndexOutOfRangeExceptionとなる
$array5 += 555 # 末尾に追加
$array5 += 5555
$array5[0] = 55

# 要素の削除
$array6 = @(6,66,666)
$array6
$array6[1] = $null
$array6
```

> 6
> 66
> 666

> 6
> 666

```powershell
$array = .1000

# 指定された値が配列に含まれるか検査する
$array -contains 5

# 配列の要素を参照
$array[0]

$array[-1]

$array[10..200] # 添え字も配列
```

> True

> 2

> 4

> 102
> 103
> (中略)
> 201

#### 多次元配列

<a id="markdown-%E5%A4%9A%E6%AC%A1%E5%85%83%E9%85%8D%E5%88%97" name="%E5%A4%9A%E6%AC%A1%E5%85%83%E9%85%8D%E5%88%97"></a>

```powershell
$array = @(("1-1","1-2","1-3","1-4"),("2-1","2-2","2-3","2-4"))
$array[1][2]
```

> 2-3

#### 連想配列(ハッシュテーブル)

<a id="markdown-%E9%80%A3%E6%83%B3%E9%85%8D%E5%88%97%E3%83%8F%E3%83%83%E3%82%B7%E3%83%A5%E3%83%86%E3%83%BC%E3%83%96%E3%83%AB" name="%E9%80%A3%E6%83%B3%E9%85%8D%E5%88%97%E3%83%8F%E3%83%83%E3%82%B7%E3%83%A5%E3%83%86%E3%83%BC%E3%83%96%E3%83%AB"></a>

```powershell
# 連想配列の宣言と代入
$table = @{key1 = "value1"; key2 = "value2"; key3 = "value3"}
$table["key1"]
```

> value1

```powershell
# 要素の追加
$table.Add("key4", "value4")
# OR
$table.key4 = "value4"

# 要素の変更
$table["key3"] = "value33"
# OR
$table.key3 = "value33"

# 要素を削除
$table.Remove("key2")
```

> Name                           Value
> ----                           -----
> key3                           value33
> key1                           value1
> key4                           value4

```powershell
# 指定されたキーに対応する値が存在するか検査する
$table.ContainsKey("key1")

# 指定された値に対応するキーが存在するか検査する
$table.ContainsValue("value33")

# 指定されたキーが配列に含まれるか検査する
$table.Contains("key1")
$table.Contains("value0")
```

> True
> False

```powershell
# すべてのキーを取得する
$keys = $table.Keys

# すべての値を取得する
$values = $table.Values

# 要素ごとに処理する
foreach ($key in $table.Keys) {
    $key + ": " + $table[$key]
}
```

> key3: value3
> key1: value1
> key2: value2

## 画面出力

<a id="markdown-%E7%94%BB%E9%9D%A2%E5%87%BA%E5%8A%9B" name="%E7%94%BB%E9%9D%A2%E5%87%BA%E5%8A%9B"></a>

```powershell
"画面出力 $a" # Write-Outputと同じ
'画面出力 $a'

Write-Host "画面出力" # コンソールに出力
Write-Output "画面出力" # パイプラインに渡す(パイプラインがなければコンソールに出力される)

Write-Host "画面出力" -NoNewline # 文末で改行しない
Write-Host "画面出力" -ForegroundColor Blue

$Host.UI.WriteLine() # コンソールに出力
$Host.UI.WriteWarningLine()

[System.Console]::Write()
[System.Console]::WriteLine()

@"
画面
出力
"
@'
画面
出力
'
```

### デバッグ出力

<a id="markdown-%E3%83%87%E3%83%90%E3%83%83%E3%82%B0%E5%87%BA%E5%8A%9B" name="%E3%83%87%E3%83%90%E3%83%83%E3%82%B0%E5%87%BA%E5%8A%9B"></a>

#### Write-Error

<a id="markdown-write-error" name="write-error"></a>

```powershell
# $ErrorActionPreference変数の値によってメッセージ表示／非表示、処理の継続／停止を指定する
try {
    $savedErrorActionPreference = $ErrorActionPreference  # 現在の設定値を保存する
    $ErrorActionPreference = "Stop"
    Write-Error -Message "画面出力" # エラー出力を行い、catch節に飛ばす
} catch {
    # 例外処理
} finally {
    $ErrorActionPreference = $savedErrorActionPreference  #既定値に戻す
}
```

#### その他のログレベル

<a id="markdown-%E3%81%9D%E3%81%AE%E4%BB%96%E3%81%AE%E3%83%AD%E3%82%B0%E3%83%AC%E3%83%99%E3%83%AB" name="%E3%81%9D%E3%81%AE%E4%BB%96%E3%81%AE%E3%83%AD%E3%82%B0%E3%83%AC%E3%83%99%E3%83%AB"></a>

```powershell
$DebugPreference
Write-Debug -Message "画面出力"

Write-Debug -Message "画面出力" -Debug # $DebugPreferenceの値が"SilentryContinue"であっても出力する

$VerbosePreference
Write-Verbose -Message "画面出力"

$WarningPreference
Write-Warning -Message "画面出力"
```

```powershell
# Write-Hostの、文字色のみログレベル別に変化させたもの
$Host.UI.WriteDebugLine("画面出力")
$Host.UI.WriteErrorLine("画面出力")
$Host.UI.WriteVerboseLine("画面出力")
$Host.UI.WriteWarningLine("画面出力")
```

### プログレスバー

<a id="markdown-%E3%83%97%E3%83%AD%E3%82%B0%E3%83%AC%E3%82%B9%E3%83%90%E3%83%BC" name="%E3%83%97%E3%83%AD%E3%82%B0%E3%83%AC%E3%82%B9%E3%83%90%E3%83%BC"></a>

```powershell
$activity = "読込処理"
$currentOperation = "データを読込んでいます。"
for($i = 0;$i -le 100; $i++){
   $status = "{0} %" -F $i
   Write-Progress $activity $status -PercentComplete $i -CurrentOperation $currentOperation

  #
  # 読込処理
  #

}
```

## プロセス

<a id="markdown-%E3%83%97%E3%83%AD%E3%82%BB%E3%82%B9" name="%E3%83%97%E3%83%AD%E3%82%BB%E3%82%B9"></a>

### 管理者権限で実行

<a id="markdown-%E7%AE%A1%E7%90%86%E8%80%85%E6%A8%A9%E9%99%90%E3%81%A7%E5%AE%9F%E8%A1%8C" name="%E7%AE%A1%E7%90%86%E8%80%85%E6%A8%A9%E9%99%90%E3%81%A7%E5%AE%9F%E8%A1%8C"></a>

```powershell
$currentPrincipal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
$isAdmin = $currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

if (!$isAdmin) {
    Start-Process pwsh "-File `"$PSCommandPath`"" -Verb RunAs
    exit
}
else {
    # 管理者権限で実行する処理
}
```

### 待機

<a id="markdown-%E5%BE%85%E6%A9%9F" name="%E5%BE%85%E6%A9%9F"></a>

#### キー押下を待機(Pause)

<a id="markdown-%E3%82%AD%E3%83%BC%E6%8A%BC%E4%B8%8B%E3%82%92%E5%BE%85%E6%A9%9Fpause" name="%E3%82%AD%E3%83%BC%E6%8A%BC%E4%B8%8B%E3%82%92%E5%BE%85%E6%A9%9Fpause"></a>

```powershell
function Pause {
    if ($psISE) {
        $null = Read-Host 'Press Enter Key...'
    }
    else {
        Write-Host "Press Any Key..."
        (Get-Host).UI.RawUI.ReadKey("NoEcho,IncludeKeyDown") | Out-Null
    }
}
```

#### 一定時間待機(Sleep, Wait)

<a id="markdown-%E4%B8%80%E5%AE%9A%E6%99%82%E9%96%93%E5%BE%85%E6%A9%9Fsleep%2C-wait" name="%E4%B8%80%E5%AE%9A%E6%99%82%E9%96%93%E5%BE%85%E6%A9%9Fsleep%2C-wait"></a>

```powershell
# 10s
Start-Sleep -s 10; Write-Host "###"

#3000ms
Start-Sleep -m 3000; Write-Host "###"
```

## 制御構文

<a id="markdown-%E5%88%B6%E5%BE%A1%E6%A7%8B%E6%96%87" name="%E5%88%B6%E5%BE%A1%E6%A7%8B%E6%96%87"></a>

### 条件分岐

<a id="markdown-%E6%9D%A1%E4%BB%B6%E5%88%86%E5%B2%90" name="%E6%9D%A1%E4%BB%B6%E5%88%86%E5%B2%90"></a>

#### if文

<a id="markdown-if%E6%96%87" name="if%E6%96%87"></a>

```powershell
if ($cond1) {
    echo "true1"
} elseif ($cond2) {
    echo "true2"
} else {
     echo "false"
}
```

#### TRUEと評価される値

<a id="markdown-true%E3%81%A8%E8%A9%95%E4%BE%A1%E3%81%95%E3%82%8C%E3%82%8B%E5%80%A4" name="true%E3%81%A8%E8%A9%95%E4%BE%A1%E3%81%95%E3%82%8C%E3%82%8B%E5%80%A4"></a>

```powershell
$true
1
'a'
"a"
```

#### FALSEと評価される値

<a id="markdown-false%E3%81%A8%E8%A9%95%E4%BE%A1%E3%81%95%E3%82%8C%E3%82%8B%E5%80%A4" name="false%E3%81%A8%E8%A9%95%E4%BE%A1%E3%81%95%E3%82%8C%E3%82%8B%E5%80%A4"></a>

```powershell
$false
0
""
```

#### switch文

<a id="markdown-switch%E6%96%87" name="switch%E6%96%87"></a>

```powershell
$v = 1
switch ($v) {
    1 { Write-Host "one" }
    2 { Write-Host "two" }
    Default { Write-Host "default" }
}
```

### ループ

<a id="markdown-%E3%83%AB%E3%83%BC%E3%83%97" name="%E3%83%AB%E3%83%BC%E3%83%97"></a>

#### ループ文

<a id="markdown-%E3%83%AB%E3%83%BC%E3%83%97%E6%96%87" name="%E3%83%AB%E3%83%BC%E3%83%97%E6%96%87"></a>

```powershell
for ($i = 0; $i -lt 4; $i++) {
    echo $i
}
```

```powershell
foreach ($i in @(1, 2, 3, 4)) {
    echo $i
}

foreach ($i in 0..4) {
    echo $i
}

$map = @{k1="v1"; k2="v2"; k3="v3"}
foreach ($i in $map) {
    echo $i
}

$list = New-Object System.Collections.ArrayList
$list.Add("i1")
$list.Add("i2") > $null
[void]$list.Add("i3")
foreach ($i in $list) {
    echo $i
}
```

```powershell
$i = 0
while ($i -lt 4) {
    echo $i
    $i++
}
```

```powershell
$i = 0
do {
    echo $i
    $i++
} while ($i -lt 4)
```

```powershell
$i = 0
do {
    echo $i
    $i++
} until ($i -gt 4-1)
```

いずれも

> 0
> 1
> 2
> 3

#### ループ制御文

<a id="markdown-%E3%83%AB%E3%83%BC%E3%83%97%E5%88%B6%E5%BE%A1%E6%96%87" name="%E3%83%AB%E3%83%BC%E3%83%97%E5%88%B6%E5%BE%A1%E6%96%87"></a>

```powershell
foreach ($i in 0..4) {
    if($i -eq 3){
        break
    }
    echo $i
}
```

> 1
> 2

```powershell
foreach ($i in 0..4) {
    if($i -eq 3){
        continue
    }
    echo $i
}
```

> 1
> 2
> 4

### 例外処理

<a id="markdown-%E4%BE%8B%E5%A4%96%E5%87%A6%E7%90%86" name="%E4%BE%8B%E5%A4%96%E5%87%A6%E7%90%86"></a>

#### try節

<a id="markdown-try%E7%AF%80" name="try%E7%AF%80"></a>

PowerShellのエラー「終了するエラー」「続行するエラー」のうち、デフォルトでCatchできるのは「終了するエラー」のみだが、$ErrorActionPreferenceに「Stop」を代入することで、両方例外としてCatchすることができるようになる。

| 定数             | 内容                                     |
| :--------------- | :--------------------------------------- |
| continue         | 例外は出力しつつ、処理も継続する(既定値) |
| silentlycontinue | 例外を出力せずに、処理を継続する         |
| stop             | 処理を終了する                           |

```powershell
$ErrorActionPreference = "Stop"

# 戻り値
$rc = 0

try{
    Write-Host "処理1を実行します。"
    Set-Content -Path ".\not_exist\not_exist.txt" -Value "test"
    Write-Host "処理2を実行します。"
}catch{
# }catch [Exception]{
    Write-Host "catch例外処理です。"
    Write-Host "Error:" $Error
    Write-Host "StackTrace:" $StackTrace
    $rc = 1
}finally{
    Write-Host "finally処理です。"
}

exit $rc
```

#### trap節

<a id="markdown-trap%E7%AF%80" name="trap%E7%AF%80"></a>

```powershell
# 例外発生時にスクリプトを停止する
trap [Exception] {
    write-host("ps_exception_2():trap")
    break
}

# 処理
```

```powershell
# 例外発生時もスクリプトを継続する
trap [Exception] {
    write-host("ps_exception_1():trap")
    continue
  }

# 処理
```

## 関数

<a id="markdown-%E9%96%A2%E6%95%B0" name="%E9%96%A2%E6%95%B0"></a>

### 関数の基本形

<a id="markdown-%E9%96%A2%E6%95%B0%E3%81%AE%E5%9F%BA%E6%9C%AC%E5%BD%A2" name="%E9%96%A2%E6%95%B0%E3%81%AE%E5%9F%BA%E6%9C%AC%E5%BD%A2"></a>

```powershell
function Func ($arg){
    return "戻り値"
}

# 呼出しに括弧を使わない
$result = Func $arg1 $arg2 $arg3
```

### 引数

<a id="markdown-%E5%BC%95%E6%95%B0" name="%E5%BC%95%E6%95%B0"></a>

#### 引数の取り方

<a id="markdown-%E5%BC%95%E6%95%B0%E3%81%AE%E5%8F%96%E3%82%8A%E6%96%B9" name="%E5%BC%95%E6%95%B0%E3%81%AE%E5%8F%96%E3%82%8A%E6%96%B9"></a>

```powershell
function Func1($arg1, $arg2){ # 引数リストの使用

    # 処理

    return "戻り値"
}

function Func2 {
    param($arg1, $arg2) # paramキーワードを使用

    # 処理

    return "戻り値"
}

function Func3 {
    $arg1 = $args[0] # 自動変数$argsを使用
    $arg2 = $args[1]

    # 処理

    return "戻り値"
}
```

#### 引数の型を指定

<a id="markdown-%E5%BC%95%E6%95%B0%E3%81%AE%E5%9E%8B%E3%82%92%E6%8C%87%E5%AE%9A" name="%E5%BC%95%E6%95%B0%E3%81%AE%E5%9E%8B%E3%82%92%E6%8C%87%E5%AE%9A"></a>

```powershell
function Func4([int]$arg1, [int]$arg2){
    return $arg1 + $arg2
}
```

#### 引数の参照渡し

<a id="markdown-%E5%BC%95%E6%95%B0%E3%81%AE%E5%8F%82%E7%85%A7%E6%B8%A1%E3%81%97" name="%E5%BC%95%E6%95%B0%E3%81%AE%E5%8F%82%E7%85%A7%E6%B8%A1%E3%81%97"></a>

```powershell
function Func5([ref]$arg1, [ref]$arg2){
    return "戻り値"
}
```

#### 引数の既定値

<a id="markdown-%E5%BC%95%E6%95%B0%E3%81%AE%E6%97%A2%E5%AE%9A%E5%80%A4" name="%E5%BC%95%E6%95%B0%E3%81%AE%E6%97%A2%E5%AE%9A%E5%80%A4"></a>

```powershell
function Func5($arg1 = 1, $arg2 = 2){
    return "戻り値"
}
```

# システム情報

<a id="markdown-%E3%82%B7%E3%82%B9%E3%83%86%E3%83%A0%E6%83%85%E5%A0%B1" name="%E3%82%B7%E3%82%B9%E3%83%86%E3%83%A0%E6%83%85%E5%A0%B1"></a>

```powershell
Get-ComputerInfo
```

```powershell
Get-ComputerInfo | Get-Member -MemberType Properties
```

```
Name                                                    MemberType Definition
----                                                    ---------- ----------
BiosBIOSVersion                                         Property   string[] BiosBIOSVersion {get;}
BiosBuildNumber                                         Property   string BiosBuildNumber {get;}
BiosCaption                                             Property   string BiosCaption {get;}
BiosCharacteristics                                     Property   ushort[] BiosCharacteristics {get;}
BiosCodeSet                                             Property   string BiosCodeSet {get;}
BiosCurrentLanguage                                     Property   string BiosCurrentLanguage {get;}
BiosDescription                                         Property   string BiosDescription {get;}
BiosEmbeddedControllerMajorVersion                      Property   System.Nullable[short] BiosEmbeddedControllerMajorVersion {get;}
BiosEmbeddedControllerMinorVersion                      Property   System.Nullable[short] BiosEmbeddedControllerMinorVersion {get;}
BiosFirmwareType                                        Property   System.Nullable[Microsoft.PowerShell.Commands.FirmwareType] BiosFirmwareType {get;}
BiosIdentificationCode                                  Property   string BiosIdentificationCode {get;}
BiosInstallableLanguages                                Property   System.Nullable[ushort] BiosInstallableLanguages {get;}
BiosInstallDate                                         Property   System.Nullable[datetime] BiosInstallDate {get;}
BiosLanguageEdition                                     Property   string BiosLanguageEdition {get;}
BiosListOfLanguages                                     Property   string[] BiosListOfLanguages {get;}
BiosManufacturer                                        Property   string BiosManufacturer {get;}
BiosName                                                Property   string BiosName {get;}
BiosOtherTargetOS                                       Property   string BiosOtherTargetOS {get;}
BiosPrimaryBIOS                                         Property   System.Nullable[bool] BiosPrimaryBIOS {get;}
BiosReleaseDate                                         Property   System.Nullable[datetime] BiosReleaseDate {get;}
BiosSerialNumber                                        Property   string BiosSerialNumber {get;}
BiosSMBIOSBIOSVersion                                   Property   string BiosSMBIOSBIOSVersion {get;}
BiosSMBIOSMajorVersion                                  Property   System.Nullable[ushort] BiosSMBIOSMajorVersion {get;}
BiosSMBIOSMinorVersion                                  Property   System.Nullable[ushort] BiosSMBIOSMinorVersion {get;}
BiosSMBIOSPresent                                       Property   System.Nullable[bool] BiosSMBIOSPresent {get;}
BiosSoftwareElementState                                Property   System.Nullable[Microsoft.PowerShell.Commands.SoftwareElementState] BiosSoftwareElementState {get;}
BiosStatus                                              Property   string BiosStatus {get;}
BiosSystemBiosMajorVersion                              Property   System.Nullable[ushort] BiosSystemBiosMajorVersion {get;}
BiosSystemBiosMinorVersion                              Property   System.Nullable[ushort] BiosSystemBiosMinorVersion {get;}
BiosTargetOperatingSystem                               Property   System.Nullable[ushort] BiosTargetOperatingSystem {get;}
BiosVersion                                             Property   string BiosVersion {get;}
CsAdminPasswordStatus                                   Property   System.Nullable[Microsoft.PowerShell.Commands.HardwareSecurity] CsAdminPasswordStatus {get;}
CsAutomaticManagedPagefile                              Property   System.Nullable[bool] CsAutomaticManagedPagefile {get;}
CsAutomaticResetBootOption                              Property   System.Nullable[bool] CsAutomaticResetBootOption {get;}
CsAutomaticResetCapability                              Property   System.Nullable[bool] CsAutomaticResetCapability {get;}
CsBootOptionOnLimit                                     Property   System.Nullable[Microsoft.PowerShell.Commands.BootOptionAction] CsBootOptionOnLimit {get;}
CsBootOptionOnWatchDog                                  Property   System.Nullable[Microsoft.PowerShell.Commands.BootOptionAction] CsBootOptionOnWatchDog {get;}
CsBootROMSupported                                      Property   System.Nullable[bool] CsBootROMSupported {get;}
CsBootStatus                                            Property   ushort[] CsBootStatus {get;}
CsBootupState                                           Property   string CsBootupState {get;}
CsCaption                                               Property   string CsCaption {get;}
CsChassisBootupState                                    Property   System.Nullable[Microsoft.PowerShell.Commands.SystemElementState] CsChassisBootupState {get;}
CsChassisSKUNumber                                      Property   string CsChassisSKUNumber {get;}
CsCurrentTimeZone                                       Property   System.Nullable[short] CsCurrentTimeZone {get;}
CsDaylightInEffect                                      Property   System.Nullable[bool] CsDaylightInEffect {get;}
CsDescription                                           Property   string CsDescription {get;}
CsDNSHostName                                           Property   string CsDNSHostName {get;}
CsDomain                                                Property   string CsDomain {get;}
CsDomainRole                                            Property   System.Nullable[Microsoft.PowerShell.Commands.DomainRole] CsDomainRole {get;}
CsEnableDaylightSavingsTime                             Property   System.Nullable[bool] CsEnableDaylightSavingsTime {get;}
CsFrontPanelResetStatus                                 Property   System.Nullable[Microsoft.PowerShell.Commands.HardwareSecurity] CsFrontPanelResetStatus {get;}
CsHypervisorPresent                                     Property   System.Nullable[bool] CsHypervisorPresent {get;}
CsInfraredSupported                                     Property   System.Nullable[bool] CsInfraredSupported {get;}
CsInitialLoadInfo                                       Property   string CsInitialLoadInfo {get;}
CsInstallDate                                           Property   System.Nullable[datetime] CsInstallDate {get;}
CsKeyboardPasswordStatus                                Property   System.Nullable[Microsoft.PowerShell.Commands.HardwareSecurity] CsKeyboardPasswordStatus {get;}
CsLastLoadInfo                                          Property   string CsLastLoadInfo {get;}
CsManufacturer                                          Property   string CsManufacturer {get;}
CsModel                                                 Property   string CsModel {get;}
CsName                                                  Property   string CsName {get;}
CsNetworkAdapters                                       Property   Microsoft.PowerShell.Commands.NetworkAdapter[] CsNetworkAdapters {get;}
CsNetworkServerModeEnabled                              Property   System.Nullable[bool] CsNetworkServerModeEnabled {get;}
CsNumberOfLogicalProcessors                             Property   System.Nullable[uint] CsNumberOfLogicalProcessors {get;}
CsNumberOfProcessors                                    Property   System.Nullable[uint] CsNumberOfProcessors {get;}
CsOEMStringArray                                        Property   string[] CsOEMStringArray {get;}
CsPartOfDomain                                          Property   System.Nullable[bool] CsPartOfDomain {get;}
CsPauseAfterReset                                       Property   System.Nullable[long] CsPauseAfterReset {get;}
CsPCSystemType                                          Property   System.Nullable[Microsoft.PowerShell.Commands.PCSystemType] CsPCSystemType {get;}
CsPCSystemTypeEx                                        Property   System.Nullable[Microsoft.PowerShell.Commands.PCSystemTypeEx] CsPCSystemTypeEx {get;}
CsPhysicallyInstalledMemory                             Property   System.Nullable[ulong] CsPhysicallyInstalledMemory {get;}
CsPowerManagementCapabilities                           Property   Microsoft.PowerShell.Commands.PowerManagementCapabilities[] CsPowerManagementCapabilities {get;}
CsPowerManagementSupported                              Property   System.Nullable[bool] CsPowerManagementSupported {get;}
CsPowerOnPasswordStatus                                 Property   System.Nullable[Microsoft.PowerShell.Commands.HardwareSecurity] CsPowerOnPasswordStatus {get;}
CsPowerState                                            Property   System.Nullable[Microsoft.PowerShell.Commands.PowerState] CsPowerState {get;}
CsPowerSupplyState                                      Property   System.Nullable[Microsoft.PowerShell.Commands.SystemElementState] CsPowerSupplyState {get;}
CsPrimaryOwnerContact                                   Property   string CsPrimaryOwnerContact {get;}
CsPrimaryOwnerName                                      Property   string CsPrimaryOwnerName {get;}
CsProcessors                                            Property   Microsoft.PowerShell.Commands.Processor[] CsProcessors {get;}
CsResetCapability                                       Property   System.Nullable[Microsoft.PowerShell.Commands.ResetCapability] CsResetCapability {get;}
CsResetCount                                            Property   System.Nullable[short] CsResetCount {get;}
CsResetLimit                                            Property   System.Nullable[short] CsResetLimit {get;}
CsRoles                                                 Property   string[] CsRoles {get;}
CsStatus                                                Property   string CsStatus {get;}
CsSupportContactDescription                             Property   string[] CsSupportContactDescription {get;}
CsSystemFamily                                          Property   string CsSystemFamily {get;}
CsSystemSKUNumber                                       Property   string CsSystemSKUNumber {get;}
CsSystemType                                            Property   string CsSystemType {get;}
CsThermalState                                          Property   System.Nullable[Microsoft.PowerShell.Commands.SystemElementState] CsThermalState {get;}
CsTotalPhysicalMemory                                   Property   System.Nullable[ulong] CsTotalPhysicalMemory {get;}
CsUserName                                              Property   string CsUserName {get;}
CsWakeUpType                                            Property   System.Nullable[Microsoft.PowerShell.Commands.WakeUpType] CsWakeUpType {get;}
CsWorkgroup                                             Property   string CsWorkgroup {get;}
DeviceGuardAvailableSecurityProperties                  Property   Microsoft.PowerShell.Commands.DeviceGuardHardwareSecure[] DeviceGuardAvailableSecurityProperties {get;}
DeviceGuardCodeIntegrityPolicyEnforcementStatus         Property   System.Nullable[Microsoft.PowerShell.Commands.DeviceGuardConfigCodeIntegrityStatus] DeviceGuardCodeIntegrityPolicyEnforce…
DeviceGuardRequiredSecurityProperties                   Property   Microsoft.PowerShell.Commands.DeviceGuardHardwareSecure[] DeviceGuardRequiredSecurityProperties {get;}
DeviceGuardSecurityServicesConfigured                   Property   Microsoft.PowerShell.Commands.DeviceGuardSoftwareSecure[] DeviceGuardSecurityServicesConfigured {get;}
DeviceGuardSecurityServicesRunning                      Property   Microsoft.PowerShell.Commands.DeviceGuardSoftwareSecure[] DeviceGuardSecurityServicesRunning {get;}
DeviceGuardSmartStatus                                  Property   System.Nullable[Microsoft.PowerShell.Commands.DeviceGuardSmartStatus] DeviceGuardSmartStatus {get;}
DeviceGuardUserModeCodeIntegrityPolicyEnforcementStatus Property   System.Nullable[Microsoft.PowerShell.Commands.DeviceGuardConfigCodeIntegrityStatus] DeviceGuardUserModeCodeIntegrityPolic…
HyperVisorPresent                                       Property   System.Nullable[bool] HyperVisorPresent {get;}
HyperVRequirementDataExecutionPreventionAvailable       Property   System.Nullable[bool] HyperVRequirementDataExecutionPreventionAvailable {get;}
HyperVRequirementSecondLevelAddressTranslation          Property   System.Nullable[bool] HyperVRequirementSecondLevelAddressTranslation {get;}
HyperVRequirementVirtualizationFirmwareEnabled          Property   System.Nullable[bool] HyperVRequirementVirtualizationFirmwareEnabled {get;}
HyperVRequirementVMMonitorModeExtensions                Property   System.Nullable[bool] HyperVRequirementVMMonitorModeExtensions {get;}
KeyboardLayout                                          Property   string KeyboardLayout {get;}
LogonServer                                             Property   string LogonServer {get;}
OsArchitecture                                          Property   string OsArchitecture {get;}
OsBootDevice                                            Property   string OsBootDevice {get;}
OsBuildNumber                                           Property   string OsBuildNumber {get;}
OsBuildType                                             Property   string OsBuildType {get;}
OsCodeSet                                               Property   string OsCodeSet {get;}
OsCountryCode                                           Property   string OsCountryCode {get;}
OsCSDVersion                                            Property   string OsCSDVersion {get;}
OsCurrentTimeZone                                       Property   System.Nullable[short] OsCurrentTimeZone {get;}
OsDataExecutionPrevention32BitApplications              Property   System.Nullable[bool] OsDataExecutionPrevention32BitApplications {get;}
OsDataExecutionPreventionAvailable                      Property   System.Nullable[bool] OsDataExecutionPreventionAvailable {get;}
OsDataExecutionPreventionDrivers                        Property   System.Nullable[bool] OsDataExecutionPreventionDrivers {get;}
OsDataExecutionPreventionSupportPolicy                  Property   System.Nullable[Microsoft.PowerShell.Commands.DataExecutionPreventionSupportPolicy] OsDataExecutionPreventionSupportPolic…
OsDebug                                                 Property   System.Nullable[bool] OsDebug {get;}
OsDistributed                                           Property   System.Nullable[bool] OsDistributed {get;}
OsEncryptionLevel                                       Property   System.Nullable[Microsoft.PowerShell.Commands.OSEncryptionLevel] OsEncryptionLevel {get;}
OsForegroundApplicationBoost                            Property   System.Nullable[Microsoft.PowerShell.Commands.ForegroundApplicationBoost] OsForegroundApplicationBoost {get;}
OsFreePhysicalMemory                                    Property   System.Nullable[ulong] OsFreePhysicalMemory {get;}
OsFreeSpaceInPagingFiles                                Property   System.Nullable[ulong] OsFreeSpaceInPagingFiles {get;}
OsFreeVirtualMemory                                     Property   System.Nullable[ulong] OsFreeVirtualMemory {get;}
OsHardwareAbstractionLayer                              Property   string OsHardwareAbstractionLayer {get;}
OsHotFixes                                              Property   Microsoft.PowerShell.Commands.HotFix[] OsHotFixes {get;}
OsInstallDate                                           Property   System.Nullable[datetime] OsInstallDate {get;}
OsInUseVirtualMemory                                    Property   System.Nullable[ulong] OsInUseVirtualMemory {get;}
OsLanguage                                              Property   string OsLanguage {get;}
OsLastBootUpTime                                        Property   System.Nullable[datetime] OsLastBootUpTime {get;}
OsLocalDateTime                                         Property   System.Nullable[datetime] OsLocalDateTime {get;}
OsLocale                                                Property   string OsLocale {get;}
OsLocaleID                                              Property   string OsLocaleID {get;}
OsManufacturer                                          Property   string OsManufacturer {get;}
OsMaxNumberOfProcesses                                  Property   System.Nullable[uint] OsMaxNumberOfProcesses {get;}
OsMaxProcessMemorySize                                  Property   System.Nullable[ulong] OsMaxProcessMemorySize {get;}
OsMuiLanguages                                          Property   string[] OsMuiLanguages {get;}
OsName                                                  Property   string OsName {get;}
OsNumberOfLicensedUsers                                 Property   System.Nullable[uint] OsNumberOfLicensedUsers {get;}
OsNumberOfProcesses                                     Property   System.Nullable[uint] OsNumberOfProcesses {get;}
OsNumberOfUsers                                         Property   System.Nullable[uint] OsNumberOfUsers {get;}
OsOperatingSystemSKU                                    Property   System.Nullable[Microsoft.PowerShell.Commands.OperatingSystemSKU] OsOperatingSystemSKU {get;}
OsOrganization                                          Property   string OsOrganization {get;}
OsOtherTypeDescription                                  Property   string OsOtherTypeDescription {get;}
OsPAEEnabled                                            Property   System.Nullable[bool] OsPAEEnabled {get;}
OsPagingFiles                                           Property   string[] OsPagingFiles {get;}
OsPortableOperatingSystem                               Property   System.Nullable[bool] OsPortableOperatingSystem {get;}
OsPrimary                                               Property   System.Nullable[bool] OsPrimary {get;}
OsProductSuites                                         Property   Microsoft.PowerShell.Commands.OSProductSuite[] OsProductSuites {get;}
OsProductType                                           Property   System.Nullable[Microsoft.PowerShell.Commands.ProductType] OsProductType {get;}
OsRegisteredUser                                        Property   string OsRegisteredUser {get;}
OsSerialNumber                                          Property   string OsSerialNumber {get;}
OsServerLevel                                           Property   System.Nullable[Microsoft.PowerShell.Commands.ServerLevel] OsServerLevel {get;}
OsServicePackMajorVersion                               Property   System.Nullable[ushort] OsServicePackMajorVersion {get;}
OsServicePackMinorVersion                               Property   System.Nullable[ushort] OsServicePackMinorVersion {get;}
OsSizeStoredInPagingFiles                               Property   System.Nullable[ulong] OsSizeStoredInPagingFiles {get;}
OsStatus                                                Property   string OsStatus {get;}
OsSuites                                                Property   Microsoft.PowerShell.Commands.OSProductSuite[] OsSuites {get;}
OsSystemDevice                                          Property   string OsSystemDevice {get;}
OsSystemDirectory                                       Property   string OsSystemDirectory {get;}
OsSystemDrive                                           Property   string OsSystemDrive {get;}
OsTotalSwapSpaceSize                                    Property   System.Nullable[ulong] OsTotalSwapSpaceSize {get;}
OsTotalVirtualMemorySize                                Property   System.Nullable[ulong] OsTotalVirtualMemorySize {get;}
OsTotalVisibleMemorySize                                Property   System.Nullable[ulong] OsTotalVisibleMemorySize {get;}
OsType                                                  Property   System.Nullable[Microsoft.PowerShell.Commands.OSType] OsType {get;}
OsUptime                                                Property   System.Nullable[timespan] OsUptime {get;}
OsVersion                                               Property   string OsVersion {get;}
OsWindowsDirectory                                      Property   string OsWindowsDirectory {get;}
PowerPlatformRole                                       Property   System.Nullable[Microsoft.PowerShell.Commands.PowerPlatformRole] PowerPlatformRole {get;}
TimeZone                                                Property   string TimeZone {get;}
WindowsBuildLabEx                                       Property   string WindowsBuildLabEx {get;}
WindowsCurrentVersion                                   Property   string WindowsCurrentVersion {get;}
WindowsEditionId                                        Property   string WindowsEditionId {get;}
WindowsInstallationType                                 Property   string WindowsInstallationType {get;}
WindowsInstallDateFromRegistry                          Property   System.Nullable[datetime] WindowsInstallDateFromRegistry {get;}
WindowsProductId                                        Property   string WindowsProductId {get;}
WindowsProductName                                      Property   string WindowsProductName {get;}
WindowsRegisteredOrganization                           Property   string WindowsRegisteredOrganization {get;}
WindowsRegisteredOwner                                  Property   string WindowsRegisteredOwner {get;}
WindowsSystemRoot                                       Property   string WindowsSystemRoot {get;}
WindowsUBR                                              Property   System.Nullable[int] WindowsUBR {get;}
WindowsVersion                                          Property   string WindowsVersion {get;}
```

## サービス

<a id="markdown-%E3%82%B5%E3%83%BC%E3%83%93%E3%82%B9" name="%E3%82%B5%E3%83%BC%E3%83%93%E3%82%B9"></a>

```powershell

```

# 日付処理

<a id="markdown-%E6%97%A5%E4%BB%98%E5%87%A6%E7%90%86" name="%E6%97%A5%E4%BB%98%E5%87%A6%E7%90%86"></a>

```powershell
# 書式
$format = "yyyyMMdd-HHmmss"

# 要素( Get-Date|Get-Member )
(Get-Date).Year  # 年
(Get-Date).Month # 月
(Get-Date).day   # 日

# 明日
Write-Host (Get-Date).AddDays(1).ToString($format)

# 月末
$Today=(Get-Date)
(Get-Date -Year $Today.year -month $Today.month -Date 1).AddMonths(1).AddDays(-1)

# 文字列からキャスト
$datetime = [DateTime]::ParseExact("20150101-013000",$format, $null)
Write-Host $datetime.ToString($format)
```

# ファイル操作

<a id="markdown-%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E6%93%8D%E4%BD%9C" name="%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E6%93%8D%E4%BD%9C"></a>

## カレントディレクトリ

<a id="markdown-%E3%82%AB%E3%83%AC%E3%83%B3%E3%83%88%E3%83%87%E3%82%A3%E3%83%AC%E3%82%AF%E3%83%88%E3%83%AA" name="%E3%82%AB%E3%83%AC%E3%83%B3%E3%83%88%E3%83%87%E3%82%A3%E3%83%AC%E3%82%AF%E3%83%88%E3%83%AA"></a>

```powershell
# 実行中のパス取得/移動
[string] $dirPath = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $dirPath
```

## ファイルフォルダの新規作成

<a id="markdown-%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%83%95%E3%82%A9%E3%83%AB%E3%83%80%E3%81%AE%E6%96%B0%E8%A6%8F%E4%BD%9C%E6%88%90" name="%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%83%95%E3%82%A9%E3%83%AB%E3%83%80%E3%81%AE%E6%96%B0%E8%A6%8F%E4%BD%9C%E6%88%90"></a>

```powershell
[string] $filepath = Convert-Path ".\test_new.txt"
[string] $dirPath = Split-Path -Parent $MyInvocation.MyCommand.Path + "\newDir"

New-Item c:\tmp\itemized.csv -itemType File
New-Item .\temp -itemType Directory
```

### touch

<a id="markdown-touch" name="touch"></a>

```powershell
Function touch($file) {
  If (Test-Path $file) {
    (Get-Item $file).LastWriteTime = Get-Date
  } Else {
    Out-File -encoding Default $file
  }
}
```

呼出し例：

```powershell
touch test_touch.txt
```

## ファイルフォルダの削除

<a id="markdown-%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%83%95%E3%82%A9%E3%83%AB%E3%83%80%E3%81%AE%E5%89%8A%E9%99%A4" name="%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%83%95%E3%82%A9%E3%83%AB%E3%83%80%E3%81%AE%E5%89%8A%E9%99%A4"></a>

```powershell
[string] $filepathToRemove = Convert-Path ".\test_new.txt"
[string] $dirPathToRemove = Split-Path -Parent $MyInvocation.MyCommand.Path + "\newDir"

if( $(Test-Path $filepath) -ne $True ){
    Remove-Item $filepath
}
if( $(Test-Path $dirPath) -ne $True ){
    Remove-Item $dirPath -Recurse -Force
}
```

## ファイルフォルダのコピーと移動

<a id="markdown-%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%83%95%E3%82%A9%E3%83%AB%E3%83%80%E3%81%AE%E3%82%B3%E3%83%94%E3%83%BC%E3%81%A8%E7%A7%BB%E5%8B%95" name="%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%83%95%E3%82%A9%E3%83%AB%E3%83%80%E3%81%AE%E3%82%B3%E3%83%94%E3%83%BC%E3%81%A8%E7%A7%BB%E5%8B%95"></a>

```powershell
[string] $filepathToRemove = Convert-Path ".\test_new.txt"

Copy-Item -Confirm $filepathToRemove $filepathToRemove+".bak"
Move-Item -force $filepathToRemove $filepathToRemove+".bak"
```

## テキストファイル

<a id="markdown-%E3%83%86%E3%82%AD%E3%82%B9%E3%83%88%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB" name="%E3%83%86%E3%82%AD%E3%82%B9%E3%83%88%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB"></a>

文字コードについては、「-Encoding Default」と指定すればShift_JIS、「-Encoding UTF8」と指定すればUTF-8で読み書きされる。

### 1行ごとに読込み

<a id="markdown-%E8%A1%8C%E3%81%94%E3%81%A8%E3%81%AB%E8%AA%AD%E8%BE%BC%E3%81%BF" name="%E8%A1%8C%E3%81%94%E3%81%A8%E3%81%AB%E8%AA%AD%E8%BE%BC%E3%81%BF"></a>

```powershell
[string] $filepath = Convert-Path ".\test_read.txt"
Write-Host $filepath

if (Split-Path $filepath -Parent) {
    if (Test-Path $filepath) {
        $i=1

        #

        $f = (Get-Content $filepath) -as [string[]]
        foreach ($l in $f) {
            Write-Host $i : $l
            $i++
        }

        # OR

        foreach ($l in Get-Content $filepath) {
            Write-Host $i : $l
            $i++
        }

        # OR

        Get-Content $filepath -Encoding UTF8 | ForEach-Object {
            $l = $_
        }

        # OR

        $file = New-Object System.IO.StreamReader($filepath, [System.Text.Encoding]::GetEncoding("sjis"))
        while (($line = $file.ReadLine()) -ne $null) {
            Write-Host($line)
        }
        $file.Close()
    }
}
```

### 書出し

<a id="markdown-%E6%9B%B8%E5%87%BA%E3%81%97" name="%E6%9B%B8%E5%87%BA%E3%81%97"></a>

```powershell
[string] $filepath = Convert-Path ".\test_write.txt"
$data = "出力内容`n";

#

$text > $filepath;

# OR

$text | Out-File $filepath;

# OR

[IO.File]::WriteAllLines($filepath,$text);

# OR

[IO.File]::WriteAllText($filepath,$text);

# OR

$file = New-Object System.IO.StreamWriter($filepath, $false, [System.Text.Encoding]::GetEncoding("sjis"))
$file.WriteLine($data)
$file.WriteLine($data)
$file.Close()

# OR

# ファイルの末尾に追記
Add-Content $filepath $text
```

```powershell

```

## CSVファイル

<a id="markdown-csv%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB" name="csv%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB"></a>

### 読込み

<a id="markdown-%E8%AA%AD%E8%BE%BC%E3%81%BF" name="%E8%AA%AD%E8%BE%BC%E3%81%BF"></a>

```powershell
[string] $filepath = Convert-Path ".\test_read.csv"
Write-Host $filepath

if (Split-Path $filepath -Parent) {
    if (Test-Path $filepath) {
        # ヘッダ行のあるCSVファイルを読み込む場合
        #$c = Import-Csv $filepath -Encoding Default

        # ヘッダ行のないCSVファイルを読み込む場合
        #$c = Import-Csv $filepath -Encoding Default -Header (.4)
        #$c = Import-Csv $filepath -Encoding Default -Header "name1", "name2", "name3"

        # ヘッダ行のないCSVファイルを読み込み、列名を指定して表示する場合
        #$c = Import-Csv $filepath -Encoding Default -Header "name1", "name2", "name3" | Select-Object "name1"

        #　ヘッダ行のないCSVファイルを読み込み、列名および行の値を指定して表示する場合
        $c = Import-Csv $filepath -Encoding Default -Header (.3) | Where-Object {
            $_.1 -eq "1"
        }

        # 取得したデータの各行ごとに処理を行う場合
        $i=1
        $c | ForEach-Object {
            Write-Host $i : $_ : $_.1 : $_.2 : $_.3
        }
    }
}
```

### 書出し

<a id="markdown-%E6%9B%B8%E5%87%BA%E3%81%97" name="%E6%9B%B8%E5%87%BA%E3%81%97"></a>

```powershell
[string] $filepath = Convert-Path ".\test_write.csv"
$array = @(
    @{ID=1; TITLE="AAA"; PRICE=1000},
    @{ID=2; NAME="BBB"; PRICE=2000},
    @{ID=3; NAME="CCC"; PRICE=3000}
)
$array | % {New-Object PSObject -Property $_} | Export-Csv $filepath -Encoding Default  # Shift-JIS
```

```powershell
[string] $filepath = Convert-Path ".\test_write.csv"

# カスタムオブジェクトを作成
$Datas = @()

# 行の追加
$Data = New-Object PSObject | Select-Object AAA, BBB, CCC # 列を作成
$Data.AAA = "1, 1"
$Data.BBB = "1, 2"
$Data.CCC = "1, 3"
$Datas += $Data

# 行の追加
$Data = New-Object PSObject | Select-Object AAA, BBB, CCC
$Data.AAA = "2, 1"
$Data.BBB = "2, 2"
$Data.CCC = "2, 3"
$Datas += $Data

# カスタムオブジェクトを確認
$Datas | ft -AutoSize

$Datas | Export-Csv $filepath -Encoding Default  # Shift-JIS
```

## 設定ファイル(.ini)

<a id="markdown-%E8%A8%AD%E5%AE%9A%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB.ini" name="%E8%A8%AD%E5%AE%9A%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB.ini"></a>

### 読込み

<a id="markdown-%E8%AA%AD%E8%BE%BC%E3%81%BF" name="%E8%AA%AD%E8%BE%BC%E3%81%BF"></a>

```powershell
function Get-Config {
    $Path = "settings.ini"

    $Config = @{}
    Get-Content $Path | %{ $Config += ConvertFrom-StringData $_ }

    return $Config
}
```

```ini
USERNAME=admin@contoso.onmicrosoft.com
PASSWORD=foobar
```

## 構成ファイル(Web.config)

<a id="markdown-%E6%A7%8B%E6%88%90%E3%83%95%E3%82%A1%E3%82%A4%E3%83%ABweb.config" name="%E6%A7%8B%E6%88%90%E3%83%95%E3%82%A1%E3%82%A4%E3%83%ABweb.config"></a>

### 読み書き

<a id="markdown-%E8%AA%AD%E3%81%BF%E6%9B%B8%E3%81%8D" name="%E8%AA%AD%E3%81%BF%E6%9B%B8%E3%81%8D"></a>

```powershell
Add-Type -AssemblyName System.Configuration

$Map = New-Object System.Configuration.ExeConfigurationFileMap
$Map.ExeConfigFilename = ".\Web.config"
$Config = [System.Configuration.ConfigurationManager]::OpenMappedExeConfiguration($Map, [System.Configuration.ConfigurationUserLevel]::None)

$Setting = $Config.AppSettings.Settings["MY_KEY"]
If ($Setting -eq $null) {
    $Config.AppSettings.Settings.Add("MY_KEY", "New Value1");
} else {
    $Setting.Value = "New Value2";
}

$Config.Save();
```

```xml
<?xml version="0" encoding="utf-8"?>
<configuration>
    <appSettings>
        <add key="MY_KEY_DEFAULT" value="Current Value" />
        <add key="MY_KEY" value="New Value2" />
    </appSettings>
</configuration>
```

## XMLファイル

<a id="markdown-xml%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB" name="xml%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB"></a>

### 読込み

<a id="markdown-%E8%AA%AD%E8%BE%BC%E3%81%BF" name="%E8%AA%AD%E8%BE%BC%E3%81%BF"></a>

```powershell
[string] $filepath = Convert-Path ".\test_read.xml"
$xmlString = [xml](Get-Content $filepath)

# OR

$xmlString = @'
<item>
  <itemitem>value</itemitem>
</item>
'@

$xml = [xml]$xmlString
 Write-Host $xml.item.itemitem
```

### 書出し

<a id="markdown-%E6%9B%B8%E5%87%BA%E3%81%97" name="%E6%9B%B8%E5%87%BA%E3%81%97"></a>

```powershell
[string] $filepath = Convert-Path ".\test_write.xml"

$xml = New-Object System.Xml.XmlDocument

$item = $xml.CreateElement('item')
$itemitem = $xml.CreateElement('itemitem')
$itemitem.SetAttribute('attr1', 'value1')

$item.AppendChild($itemitem)
$xml.AppendChild($item)

$xml.Save($filepath)
```

## CSVファイル

<a id="markdown-csv%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB" name="csv%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB"></a>

### 読込み

<a id="markdown-%E8%AA%AD%E8%BE%BC%E3%81%BF" name="%E8%AA%AD%E8%BE%BC%E3%81%BF"></a>

```powershell
[string] $filepath = Convert-Path ".\test_read.ini"

$lines = Get-Content $filepath
foreach($line in $lines){
    if($line -match "^$" -or $line -match "^\s*;"){ continue }

    $kv = $line.split("=",2)
    Write-Host("key : " + $kv[0])
    Write-Host("val : " + $kv[1])
}
```

```ini
; コメント行
key1=value1
key2=value2
key3=value3
```

## ログ出力

<a id="markdown-%E3%83%AD%E3%82%B0%E5%87%BA%E5%8A%9B" name="%E3%83%AD%E3%82%B0%E5%87%BA%E5%8A%9B"></a>

### ログファイル

<a id="markdown-%E3%83%AD%E3%82%B0%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB" name="%E3%83%AD%E3%82%B0%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB"></a>

```powershell
$title = "Title"
$format = "yyyyMMdd"

[string] $filepath = ( Split-Path -Parent $MyInvocation.MyCommand.Path ) + "\Logs\"
Write-Host $filepath
if (Test-Path $filepath) {
    Set-Location $filepath
    [string] $filename = $title + "_" + (Get-Date).ToString($format) + ".log"
    Write-Output($filepath + $filename)

    Write-Host("Add-Content 追記/新規作成 開始")
    Write-Output test | Add-Content -Encoding Default $filename
    Write-Host("Add-Content 追記/新規作成 完了")
}

```

### イベントログ

<a id="markdown-%E3%82%A4%E3%83%99%E3%83%B3%E3%83%88%E3%83%AD%E3%82%B0" name="%E3%82%A4%E3%83%99%E3%83%B3%E3%83%88%E3%83%AD%E3%82%B0"></a>

```powershell
$format = "yyyy/MM/dd HH:mm:ss"
$startTime = Write-Host (Get-Date).ToString($format)
$endTime = Write-Host (Get-Date).ToString($format)

# エラーレコードと情報レコードで共通の項目
$logName        = "Application"
$source         = "ES_ProfileWrite"

# エラーレコードと情報レコードで異なる項目
$eventIdError   = "50008"
$eventIdInfo    = "50007"
$eventTypeError = "Err"
$eventTypeInfo  = "Info"
$messageError   = "エラーが発生しました。ログを確認してください。(処理開始：${startTime}、処理終了：${endTime})"
$messageInfo    = "処理が正常に完了しました。(処理開始：${startTime}、処理終了：${endTime})"

# ソースが既に存在するか確認
if ([System.Diagnostics.EventLog]::SourceExists($source) -eq $false){
    New-EventLog -LogName $logName -Source $source
}

# イベントログを出力
Write-EventLog -EntryType $eventTypeInfo  -EventId $eventIdInfo  -LogName $logName -Message $messageInfo  -Source $source
Write-EventLog -EntryType $eventTypeError -EventId $eventIdError -LogName $logName -Message $messageError -Source $source

# ソースを削除する場合
# Remove-EventLog -Source $source
```

# ネットワーク

<a id="markdown-%E3%83%8D%E3%83%83%E3%83%88%E3%83%AF%E3%83%BC%E3%82%AF" name="%E3%83%8D%E3%83%83%E3%83%88%E3%83%AF%E3%83%BC%E3%82%AF"></a>

## ping

<a id="markdown-ping" name="ping"></a>

```powershell
Test-Connection -computername "localhost" -count 1 -Quiet

Test-Connection -computername "localhost" -count 1

Test-Connection -computername "nohost" -count 1 -Quiet # 存在しないホスト

Test-Connection -computername "nohost" -count 1
```

> True

> Destination: localhost
>
>
>
> Ping Source           Address                   Latency BufferSize Status
>
>                                                    (ms)        (B)
>
> ---- ------           -------                   ------- ---------- ------
>
> 1 *******          ::1                             0         32 Success

> Flase

> Test-Connection: Testing connection to computer 'localhos' failed: Cannot resolve the target name.

## ARP

<a id="markdown-arp" name="arp"></a>

```powershell
Get-NetNeighbor
```

> ifIndex IPAddress                                          LinkLayerAddress      State       PolicyStore
>
> ------- ---------                                          ----------------      -----       -----------
>
> 16      192.168.0.255                                      FF-FF-FF-FF-FF-FF     Permanent   ActiveStore

<hr>

Copyright (c) 2022 YA-androidapp(<https://github.com/YA-androidapp>) All rights reserved.
