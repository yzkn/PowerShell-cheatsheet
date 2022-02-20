# PowerShell cheatsheet (基礎編)

## 目次

0. PowerShell実行ポリシーの変更
1. コメント
2. コマンドレット
3. 画面出力
4. 変数
5. 演算子
6. 制御構文
7. 日付処理
8. ファイル操作

---

## 0. PowerShell実行ポリシーの変更

```powershell
Set-ExecutionPolicy RemoteSigned
```

## 1. コメント

```powershell
# コメント

<#

範囲

#>
```

## 2. コマンドレット

### 2.1. コマンドレット

```powershell
Get-Command # コマンドレット一覧
Get-Service # サービス一覧

Write-Host "画面出力"
write-host "画面出力" # 大文字小文字の区別はない
```

### 2.2. パイプライン

```powershell
1..4|Sort-Object
```

> 1
> 2
> 3
> 4

## 3. 画面出力

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

### 3.1. デバッグ出力

#### 3.1.1. Write-Error

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

#### 3.1.2. その他のログレベル

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

### 3.1.3. プログレスバー

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

## 4. 変数

```powershell
$a = 1
$b = $c = $a

New-Variable -name a
```

### 4.1. 型を指定

```powershell
$a = 1 # 型を指定しなければObject型

# 明示的に型を指定
[byte]$val = 1
[double]$val = 2.0
[int]$val = 3
[string]$val = "4"
```

### 4.2. スコープ

| スコープ | 内容 |
| :--- | :--- |
| private | ブロック内 |
| local | ブロックと子ブロック |
| script | ファイル内 |
| global | ファイル外 |

### 4.3. 自動変数

```powershell
Get-Variable # で確認する
```

| Name |
| :--- |
| $ |
| ? |
| ^ |
| _ |
| args |
| ConfirmPreference |
| ConsoleFileName |
| DebugPreference |
| Error |
| ErrorActionPreference |
| ErrorView |
| ExecutionContext |
| false |
| FormatEnumerationLimit |
| HOME |
| Host |
| InformationPreference |
| input |
| MaximumAliasCount |
| MaximumDriveCount |
| MaximumErrorCount |
| MaximumFunctionCount |
| MaximumHistoryCount |
| MaximumVariableCount |
| MyInvocation |
| NestedPromptLevel |
| null |
| OutputEncoding |
| PID |
| PROFILE |
| ProgressPreference |
| PSBoundParameters |
| PSCommandPath |
| PSCulture |
| PSDefaultParameterValues |
| PSEdition |
| PSEmailServer |
| PSHOME |
| PSScriptRoot |
| PSSessionApplicationName |
| PSSessionConfigurationName |
| PSSessionOption |
| PSUICulture |
| PSVersionTable |
| PWD |
| ShellId |
| StackTrace |
| true |
| VerbosePreference |
| WarningPreference |
| WhatIfPreference |

### 4.4. 配列

```powershell
# 配列の宣言
$array1 = @()
[int[]]$array2

# 配列への代入
$array3 = @(1)
$array3 = ,1

$array4 = @(2,3,4)
$array4 = @(2...4)
$array4 = 2,3,4
$array4 = 2...4

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
$array = 1..1000

# 指定された値が配列に含まれるか検査する
$array -contains 5

# 配列の要素を参照
$array[0]

$array[-1]

$array[101...200] # 添え字も配列
```

> True

> 2

> 4

> 102
> 103
> (中略)
> 201

#### 4.4.1. 多次元配列

```powershell
$array = @(("1-1","1-2","1-3","1-4"),("2-1","2-2","2-3","2-4"))
$array[1][2]
```

> 2-3

#### 4.4.2. 連想配列(ハッシュテーブル)

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

## 5. 演算子

### 5.1. 算術演算子

| 演算子 | 比較内容 |
| :--- | :--- |
| + | 和 |
| ++ | インクリメント |
| - | 差 |
| -- | デクリメント |
| * | 積 |
| / | 商 |
| % | 剰余 |

冪乗には関数Powを用いる

### 5.2. 比較演算子

| 演算子 | 比較内容 |
| :--- | :--- |
| -eq | 等しい |
| -ne | 等しくない |
| -gt | より大きい |
| -ge | 以上 |
| -le | 以下 |
| -lt | より小さい |
| -like | ワイルドカード(*, ?)による文字列比較 |
| -match | 正規表現による文字列比較 |
| -notlike | 否定形 |
| -notmatch | 否定形 |

### 5.3. 論理演算子

| 演算子 | 比較内容 |
| :--- | :--- |
| -and | 積(かつ) |
| -or | 和(または) |
| -not | 否定 |
| -xor | 排他的論理和 |

### 5.4. ビット演算子

| 演算子 | 比較内容 |
| :--- | :--- |
| -band | 積(かつ) |
| -bor | 和(または) |
| -bnot | 否定 |
| -bxor | 排他的論理和 |

## 6. 制御構文

### 6.1. 条件分岐

#### 6.1.1. if文

```powershell
if ($cond1) {
    echo "true1"
} elseif ($cond2) {
    echo "true2"
} else {
     echo "false"
}
```

#### 6.1.2. TRUEと評価される値

```powershell
$true
1
'a'
"a"
```

#### 6.1.3. FALSEと評価される値

```powershell
$false
0
""
```

### 6.2. ループ

#### 6.2.1. ループ文

```powershell
for ($i = 0; $i -lt 4; $i++) {
    echo $i
}
```

```powershell
foreach ($i in @(1, 2, 3, 4)) {
    echo $i
}

foreach ($i in 1..4) {
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

#### 6.2.2. ループ制御文

```powershell
foreach ($i in 1..4) {
    if($i -eq 3){
        break
    }
    echo $i
}
```

> 1
> 2

```powershell
foreach ($i in 1..4) {
    if($i -eq 3){
        continue
    }
    echo $i
}
```

> 1
> 2
> 4

### 6.3. 関数

#### 6.3.1. 関数の基本形

```powershell
function Func ($arg){
    return "戻り値"
}

# 呼出しに括弧を使わない
$result = Func $arg1 $arg2 $arg3
```

#### 6.3.2. 引数

##### 6.3.2.1. 引数の取り方

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

##### 6.3.2.2. 引数の型を指定

```powershell
function Func4([int]$arg1, [int]$arg2){
    return $arg1 + $arg2
}
```

##### 6.3.2.3. 引数の参照渡し

```powershell
function Func5([ref]$arg1, [ref]$arg2){
    return "戻り値"
}
```

##### 6.3.2.4. 引数の既定値

```powershell
function Func5($arg1 = 1, $arg2 = 2){
    return "戻り値"
}
```

### 6.4. 例外処理

#### 6.4.1. try節

PowerShellのエラー「終了するエラー」「続行するエラー」のうち、デフォルトでCatchできるのは「終了するエラー」のみだが、$ErrorActionPreferenceに「Stop」を代入することで、両方例外としてCatchすることができるようになる。

| 定数 | 内容 |
| :--- | :--- |
| continue | 例外は出力しつつ、処理も継続する(既定値) |
| silentlycontinue | 例外を出力せずに、処理を継続する |
| stop | 処理を終了する |

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

#### 6.4.2. trap節

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

## 7. 日付処理

```powershell
# 書式
$format = "yyyyMMdd-HHmm"

# 明日
Write-Host (Get-Date).AddDays(1).ToString($format)

# 文字列からキャスト
$datetime = [DateTime]::ParseExact("20150101-0130",$format, $null)
Write-Host $datetime.ToString($format)
```

## 8. ファイル操作

### 8.1. カレントディレクトリ

```powershell
# 実行中のパス取得/移動
[string] $dirPath = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $dirPath
```

### 8.2. ファイルフォルダの新規作成

```powershell
[string] $filepath = Convert-Path ".\test_new.txt"
[string] $dirPath = Split-Path -Parent $MyInvocation.MyCommand.Path + "\newDir"

New-Item c:\tmp\itemized.csv -itemType File
New-Item .\temp -itemType Directory
```

### 8.3. touch

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

### 8.4. ファイルフォルダの削除

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

### 8.5. ファイルフォルダのコピーと移動

```powershell
[string] $filepathToRemove = Convert-Path ".\test_new.txt"

Copy-Item -Confirm $filepathToRemove $filepathToRemove+".bak"
Move-Item -force $filepathToRemove $filepathToRemove+".bak"
```



### 8.6. テキストファイル

文字コードについては、「-Encoding Default」と指定すればShift_JIS、「-Encoding UTF8」と指定すればUTF-8で読み書きされる。

#### 8.6.1. 1行ごとに読込み

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

#### 8.6.2. 書出し

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

### 8.7. CSVファイル

#### 8.7.1. 読込み

```powershell
[string] $filepath = Convert-Path ".\test_read.csv"
Write-Host $filepath

if (Split-Path $filepath -Parent) {
    if (Test-Path $filepath) {
        # ヘッダ行のあるCSVファイルを読み込む場合
        #$c = Import-Csv $filepath -Encoding Default

        # ヘッダ行のないCSVファイルを読み込む場合
        #$c = Import-Csv $filepath -Encoding Default -Header (1..4)
        #$c = Import-Csv $filepath -Encoding Default -Header "name1", "name2", "name3"

        # ヘッダ行のないCSVファイルを読み込み、列名を指定して表示する場合
        #$c = Import-Csv $filepath -Encoding Default -Header "name1", "name2", "name3" | Select-Object "name1"

        #　ヘッダ行のないCSVファイルを読み込み、列名および行の値を指定して表示する場合
        $c = Import-Csv $filepath -Encoding Default -Header (1..3) | Where-Object {
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

#### 8.7.2. 書出し

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

### 8.8. 構成ファイル(Web.config)

#### 8.8.1. 読み書き

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
<?xml version="1.0" encoding="utf-8"?>
<configuration>
    <appSettings>
        <add key="MY_KEY_DEFAULT" value="Current Value" />
        <add key="MY_KEY" value="New Value2" />
    </appSettings>
</configuration>
```

### 8.9. XMLファイル

#### 8.9.1. 読込み

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

#### 8.9.2. 書出し

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

### 8.10. CSVファイル

#### 8.10.1. 読込み

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

## 8.11. ログ出力

### 8.11.1. ログファイル

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

### 8.12. イベントログ

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
$messageError   = "エラーが発生しました。ログを確認してください。（処理開始：${startTime}、処理終了：${endTime}）"
$messageInfo    = "処理が正常に完了しました。（処理開始：${startTime}、処理終了：${endTime}）"

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

---

Copyright (c) 2017 YA-androidapp(https://github.com/YA-androidapp) All rights reserved.
