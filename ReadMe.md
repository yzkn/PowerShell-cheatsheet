<!-- TOC -->

- [おまじない](#%E3%81%8A%E3%81%BE%E3%81%98%E3%81%AA%E3%81%84)
    - [PowerShell実行ポリシーの変更](#powershell%E5%AE%9F%E8%A1%8C%E3%83%9D%E3%83%AA%E3%82%B7%E3%83%BC%E3%81%AE%E5%A4%89%E6%9B%B4)
        - [署名する](#%E7%BD%B2%E5%90%8D%E3%81%99%E3%82%8B)
    - [PowerShell バージョン](#powershell-%E3%83%90%E3%83%BC%E3%82%B8%E3%83%A7%E3%83%B3)
    - [ウィンドウを閉じない](#%E3%82%A6%E3%82%A3%E3%83%B3%E3%83%89%E3%82%A6%E3%82%92%E9%96%89%E3%81%98%E3%81%AA%E3%81%84)
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
    - [データ型](#%E3%83%87%E3%83%BC%E3%82%BF%E5%9E%8B)
        - [リテラル](#%E3%83%AA%E3%83%86%E3%83%A9%E3%83%AB)
            - [数値](#%E6%95%B0%E5%80%A4)
            - [文字列](#%E6%96%87%E5%AD%97%E5%88%97)
                - [エスケープ](#%E3%82%A8%E3%82%B9%E3%82%B1%E3%83%BC%E3%83%97)
                - [変数展開](#%E5%A4%89%E6%95%B0%E5%B1%95%E9%96%8B)
                - [式展開](#%E5%BC%8F%E5%B1%95%E9%96%8B)
                - [ヒアドキュメント](#%E3%83%92%E3%82%A2%E3%83%89%E3%82%AD%E3%83%A5%E3%83%A1%E3%83%B3%E3%83%88)
                - [部分文字列](#%E9%83%A8%E5%88%86%E6%96%87%E5%AD%97%E5%88%97)
                - [セキュア文字列（Windows PowerShellのみ）](#%E3%82%BB%E3%82%AD%E3%83%A5%E3%82%A2%E6%96%87%E5%AD%97%E5%88%97windows-powershell%E3%81%AE%E3%81%BF)
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
        - [ArrayList](#arraylist)
        - [ハッシュテーブル](#%E3%83%8F%E3%83%83%E3%82%B7%E3%83%A5%E3%83%86%E3%83%BC%E3%83%96%E3%83%AB)
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
    - [数値計算](#%E6%95%B0%E5%80%A4%E8%A8%88%E7%AE%97)
        - [四捨五入](#%E5%9B%9B%E6%8D%A8%E4%BA%94%E5%85%A5)
            - [小数](#%E5%B0%8F%E6%95%B0)
            - [整数](#%E6%95%B4%E6%95%B0)
        - [切り捨て](#%E5%88%87%E3%82%8A%E6%8D%A8%E3%81%A6)
- [システム情報](#%E3%82%B7%E3%82%B9%E3%83%86%E3%83%A0%E6%83%85%E5%A0%B1)
    - [Windows Update](#windows-update)
    - [Windows Firewall](#windows-firewall)
    - [プロセス](#%E3%83%97%E3%83%AD%E3%82%BB%E3%82%B9)
        - [アプリケーション](#%E3%82%A2%E3%83%97%E3%83%AA%E3%82%B1%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3)
            - [アプリケーション一覧](#%E3%82%A2%E3%83%97%E3%83%AA%E3%82%B1%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3%E4%B8%80%E8%A6%A7)
            - [Explorer](#explorer)
        - [ブラウザ](#%E3%83%96%E3%83%A9%E3%82%A6%E3%82%B6)
            - [既定のブラウザ](#%E6%97%A2%E5%AE%9A%E3%81%AE%E3%83%96%E3%83%A9%E3%82%A6%E3%82%B6)
            - [Edge](#edge)
            - [Firefox](#firefox)
            - [Office](#office)
                - [Excel](#excel)
                    - [ファイル読み書き](#%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E8%AA%AD%E3%81%BF%E6%9B%B8%E3%81%8D)
                    - [セル編集](#%E3%82%BB%E3%83%AB%E7%B7%A8%E9%9B%86)
                - [PowerPoint](#powerpoint)
                - [Word](#word)
            - [SQL Server](#sql-server)
            - [その他アプリケーション](#%E3%81%9D%E3%81%AE%E4%BB%96%E3%82%A2%E3%83%97%E3%83%AA%E3%82%B1%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3)
                - [音声合成](#%E9%9F%B3%E5%A3%B0%E5%90%88%E6%88%90)
    - [サービス](#%E3%82%B5%E3%83%BC%E3%83%93%E3%82%B9)
- [日付処理](#%E6%97%A5%E4%BB%98%E5%87%A6%E7%90%86)
    - [日付の差](#%E6%97%A5%E4%BB%98%E3%81%AE%E5%B7%AE)
- [ファイル操作](#%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E6%93%8D%E4%BD%9C)
    - [カレントディレクトリ](#%E3%82%AB%E3%83%AC%E3%83%B3%E3%83%88%E3%83%87%E3%82%A3%E3%83%AC%E3%82%AF%E3%83%88%E3%83%AA)
    - [特別なフォルダのパスを取得](#%E7%89%B9%E5%88%A5%E3%81%AA%E3%83%95%E3%82%A9%E3%83%AB%E3%83%80%E3%81%AE%E3%83%91%E3%82%B9%E3%82%92%E5%8F%96%E5%BE%97)
    - [ファイル一覧](#%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E4%B8%80%E8%A6%A7)
    - [フォルダの合計サイズ（再帰）](#%E3%83%95%E3%82%A9%E3%83%AB%E3%83%80%E3%81%AE%E5%90%88%E8%A8%88%E3%82%B5%E3%82%A4%E3%82%BA%E5%86%8D%E5%B8%B0)
    - [ファイルフォルダの新規作成](#%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%83%95%E3%82%A9%E3%83%AB%E3%83%80%E3%81%AE%E6%96%B0%E8%A6%8F%E4%BD%9C%E6%88%90)
        - [touch](#touch)
    - [ファイルフォルダの削除](#%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%83%95%E3%82%A9%E3%83%AB%E3%83%80%E3%81%AE%E5%89%8A%E9%99%A4)
    - [ファイルフォルダのコピーと移動](#%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%83%95%E3%82%A9%E3%83%AB%E3%83%80%E3%81%AE%E3%82%B3%E3%83%94%E3%83%BC%E3%81%A8%E7%A7%BB%E5%8B%95)
    - [ファイルの作成日時・最終更新日時・最終アクセス日時](#%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%81%AE%E4%BD%9C%E6%88%90%E6%97%A5%E6%99%82%E3%83%BB%E6%9C%80%E7%B5%82%E6%9B%B4%E6%96%B0%E6%97%A5%E6%99%82%E3%83%BB%E6%9C%80%E7%B5%82%E3%82%A2%E3%82%AF%E3%82%BB%E3%82%B9%E6%97%A5%E6%99%82)
        - [取得](#%E5%8F%96%E5%BE%97)
        - [設定](#%E8%A8%AD%E5%AE%9A)
    - [テキストファイル](#%E3%83%86%E3%82%AD%E3%82%B9%E3%83%88%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB)
        - [行ごとに読込み](#%E8%A1%8C%E3%81%94%E3%81%A8%E3%81%AB%E8%AA%AD%E8%BE%BC%E3%81%BF)
        - [書出し](#%E6%9B%B8%E5%87%BA%E3%81%97)
    - [JSONファイル](#json%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB)
        - [読込み](#%E8%AA%AD%E8%BE%BC%E3%81%BF)
        - [書込み](#%E6%9B%B8%E8%BE%BC%E3%81%BF)
    - [CSVファイル](#csv%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB)
        - [読込み](#%E8%AA%AD%E8%BE%BC%E3%81%BF)
        - [書出し](#%E6%9B%B8%E5%87%BA%E3%81%97)
    - [設定ファイル.ini](#%E8%A8%AD%E5%AE%9A%E3%83%95%E3%82%A1%E3%82%A4%E3%83%ABini)
        - [読込み](#%E8%AA%AD%E8%BE%BC%E3%81%BF)
            - [コメント行対応](#%E3%82%B3%E3%83%A1%E3%83%B3%E3%83%88%E8%A1%8C%E5%AF%BE%E5%BF%9C)
    - [構成ファイルWeb.config](#%E6%A7%8B%E6%88%90%E3%83%95%E3%82%A1%E3%82%A4%E3%83%ABwebconfig)
        - [読み書き](#%E8%AA%AD%E3%81%BF%E6%9B%B8%E3%81%8D)
    - [XMLファイル](#xml%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB)
        - [読込み](#%E8%AA%AD%E8%BE%BC%E3%81%BF)
        - [書出し](#%E6%9B%B8%E5%87%BA%E3%81%97)
    - [ZIPファイル](#zip%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB)
    - [ログ出力](#%E3%83%AD%E3%82%B0%E5%87%BA%E5%8A%9B)
        - [ログファイル](#%E3%83%AD%E3%82%B0%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB)
        - [イベントログ](#%E3%82%A4%E3%83%99%E3%83%B3%E3%83%88%E3%83%AD%E3%82%B0)
            - [Level キー](#level-%E3%82%AD%E3%83%BC)
    - [ISOファイル](#iso%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB)
        - [マウント](#%E3%83%9E%E3%82%A6%E3%83%B3%E3%83%88)
        - [アンマウント](#%E3%82%A2%E3%83%B3%E3%83%9E%E3%82%A6%E3%83%B3%E3%83%88)
- [ネットワーク](#%E3%83%8D%E3%83%83%E3%83%88%E3%83%AF%E3%83%BC%E3%82%AF)
    - [URLエンコード](#url%E3%82%A8%E3%83%B3%E3%82%B3%E3%83%BC%E3%83%89)
    - [ping](#ping)
    - [ARP](#arp)
    - [Webリクエスト](#web%E3%83%AA%E3%82%AF%E3%82%A8%E3%82%B9%E3%83%88)
        - [GET](#get)
            - [ファイルをダウンロードする](#%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%82%92%E3%83%80%E3%82%A6%E3%83%B3%E3%83%AD%E3%83%BC%E3%83%89%E3%81%99%E3%82%8B)
            - [リンクURLの一覧を取得する](#%E3%83%AA%E3%83%B3%E3%82%AFurl%E3%81%AE%E4%B8%80%E8%A6%A7%E3%82%92%E5%8F%96%E5%BE%97%E3%81%99%E3%82%8B)
        - [POST](#post)
    - [ネットワークアダプタ](#%E3%83%8D%E3%83%83%E3%83%88%E3%83%AF%E3%83%BC%E3%82%AF%E3%82%A2%E3%83%80%E3%83%97%E3%82%BF)
        - [IPアドレス](#ip%E3%82%A2%E3%83%89%E3%83%AC%E3%82%B9)

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
$ pwsh --version
```


## ウィンドウを閉じない
<a id="markdown-%E3%82%A6%E3%82%A3%E3%83%B3%E3%83%89%E3%82%A6%E3%82%92%E9%96%89%E3%81%98%E3%81%AA%E3%81%84" name="%E3%82%A6%E3%82%A3%E3%83%B3%E3%83%89%E3%82%A6%E3%82%92%E9%96%89%E3%81%98%E3%81%AA%E3%81%84"></a>

エクスプローラーから「PowerShellで実行」でps1ファイルを実行した場合には、コマンド実行が完了した後PowerShellのウィンドウが閉じてしまう。閉じないようにするためにはスクリプトファイルの最後に pause を追記しておく。

```powershell
<#

処理

#>

pause

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



## データ型
<a id="markdown-%E3%83%87%E3%83%BC%E3%82%BF%E5%9E%8B" name="%E3%83%87%E3%83%BC%E3%82%BF%E5%9E%8B"></a>

| type                | FullName                                       | MinValue                         | MaxValue                        |
| ------------------- | ---------------------------------------------- | -------------------------------- | ------------------------------- |
| `[array]`           | `System.Array`                                 |                                  |                                 |
| `[bool]`            | `System.Boolean`                               |                                  |                                 |
| `[byte]`            | `System.Byte`                                  | `0`                              | `255`                           |
| `[char]`            | `System.Char`                                  |                                  |                                 |
| `[datetime]`        | `System.DateTime`                              | `0001/01/01 0:00:00`             | `9999/12/31 23:59:59`           |
| `[decimal]`         | `System.Decimal`                               | `-79228162514264337593543950335` | `79228162514264337593543950335` |
| `[double]`          | `System.Double`                                | `-1.79769313486232E+308`         | `1.79769313486232E+308`         |
| `[guid]`            | `System.Guid`                                  |                                  |                                 |
| `[hashtable]`       | `System.Collections.Hashtable`                 |                                  |                                 |
| `[int16]`           | `System.Int16`                                 | `-32768`                         | `32767`                         |
| `[int32], [int]`    | `System.Int32`                                 | `-2147483648`                    | `2147483647`                    |
| `[int64], [long]`   | `System.Int64`                                 | `-9223372036854775808`           | `9223372036854775807`           |
| `[nullable]`        | `System.Nullable`                              |                                  |                                 |
| `[psobject]`        | `System.Management.Automation.PSObject`        |                                  |                                 |
| `[regex]`           | `System.Text.RegularExpressions.Regex`         |                                  |                                 |
| `[sbyte]`           | `System.SByte`                                 | `-128`                           | `127`                           |
| `[scriptblock]`     | `System.Management.Automation.ScriptBlock`     |                                  |                                 |
| `[single], [float]` | `System.Single`                                | `-3.402823E+38`                  | `3.402823E+38`                  |
| `[string]`          | `System.String`                                |                                  |                                 |
| `[switch]`          | `System.Management.Automation.SwitchParameter` |                                  |                                 |
| `[timespan]`        | `System.TimeSpan`                              | `-10675199.02:48:05.4775808`     | `10675199.02:48:05.4775807`     |
| `[type]`            | `System.Type`                                  |                                  |                                 |
| `[uint16]`          | `System.UInt16`                                | `0`                              | `65535`                         |
| `[uint32]`          | `System.UInt32`                                | `0`                              | `4294967295`                    |
| `[uint64]`          | `System.UInt64`                                | `0`                              | `18446744073709551615`          |
| `[xml]`             | `System.Xml.XmlDocument`                       |                                  |                                 |

```powershell
$type = [array]
# $type = $var.GetType()

Write-Output ("| {0} | {1} | {2} | {3} |" -f $type.Name, $type.FullName, $type::MinValue, $type::MaxValue)
```


### リテラル
<a id="markdown-%E3%83%AA%E3%83%86%E3%83%A9%E3%83%AB" name="%E3%83%AA%E3%83%86%E3%83%A9%E3%83%AB"></a>

#### 数値
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

#### 文字列
<a id="markdown-%E6%96%87%E5%AD%97%E5%88%97" name="%E6%96%87%E5%AD%97%E5%88%97"></a>

```powershell
'Lorem ipsum'
"Lorem ipsum"
```

> Lorem ipsum
>
> Lorem ipsum

##### エスケープ
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

##### 変数展開
<a id="markdown-%E5%A4%89%E6%95%B0%E5%B1%95%E9%96%8B" name="%E5%A4%89%E6%95%B0%E5%B1%95%E9%96%8B"></a>

```powershell
$ipsum  = "ipsum"

'Lorem $ipsum'
"Lorem $ipsum"
```

> Lorem $ipsum
>
> Lorem ipsum

##### 式展開
<a id="markdown-%E5%BC%8F%E5%B1%95%E9%96%8B" name="%E5%BC%8F%E5%B1%95%E9%96%8B"></a>

```powershell
"Lorem$('L' + 'o' * 3)ipsum"
```

> LoremLoooipsum

##### ヒアドキュメント
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

##### 部分文字列
<a id="markdown-%E9%83%A8%E5%88%86%E6%96%87%E5%AD%97%E5%88%97" name="%E9%83%A8%E5%88%86%E6%96%87%E5%AD%97%E5%88%97"></a>

```powershell
$lipsum = "Lorem ipsum"
$len=2


Write-Host $lipsum.Substring(0, $len)

Write-Host $lipsum.Substring($lipsum.Length - $len, $len)
```

> Lo
>
> um

##### セキュア文字列（Windows PowerShellのみ）
<a id="markdown-%E3%82%BB%E3%82%AD%E3%83%A5%E3%82%A2%E6%96%87%E5%AD%97%E5%88%97%EF%BC%88windows-powershell%E3%81%AE%E3%81%BF%EF%BC%89" name="%E3%82%BB%E3%82%AD%E3%83%A5%E3%82%A2%E6%96%87%E5%AD%97%E5%88%97%EF%BC%88windows-powershell%E3%81%AE%E3%81%BF%EF%BC%89"></a>

```powershell
$sourceString = "sensitive text data"
Write-Host $sourceString

$secureString = ConvertTo-SecureString -string $sourceString -AsPlainText -Force
Write-Host $secureString

$SecureString | ConvertFrom-SecureString | Out-File .\password.txt



$SecureString = Get-Content .\password.txt | ConvertTo-SecureString
Write-Host $secureString

$plainString = [System.Runtime.InteropServices.Marshal]::PtrToStringBSTR([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($SecureString))
write-host $plainString
```

> sensitive text data
>
> System.Security.SecureString

> System.Security.SecureString
>
> sensitive text data


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
| -in          | 含む ( `"def" -in "abc", "def" ` )      |
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

| 変数名                         | 内容                                         |
| ------------------------------ | -------------------------------------------- |
| `$env:ENVVAR`                  | 環境変数                                     |
|                                |                                              |
| `$_` ( PSItem と同じ)          | パイプラインオブジェクトの現在のオブジェクト |
| `$?`                           | 最後のコマンドの実行状態(リターンコード)     |
| `$^`                           | 1つ前のコマンド履歴                          |
| `$$`                           | 1つ前のコマンド履歴                          |
| `$args`                        | コマンドライン引数                           |
| `$cert`                        |                                              |
| `$ConfirmPreference`           |                                              |
| `$DebugPreference`             |                                              |
| `$EnabledExperimentalFeatures` |                                              |
| `$Error`                       | 最後のエラー                                 |
| `$ErrorActionPreference`       |                                              |
| `$ErrorView`                   |                                              |
| `$ExecutionContext`            |                                              |
| `$false`                       | False                                        |
| `$FormatEnumerationLimit`      |                                              |
| `$HOME`                        | ホームディレクトリのパス                     |
| `$Host`                        | ホストアプリケーションを表すオブジェクト     |
| `$InformationPreference`       |                                              |
| `$input`                       | 関数に渡される入力                           |
| `$IsCoreCLR`                   |                                              |
| `$IsLinux`                     |                                              |
| `$IsMacOS`                     |                                              |
| `$IsWindows`                   |                                              |
| `$MaximumHistoryCount`         |                                              |
| `$MyInvocation`                | 現在のコマンドに関する情報                   |
| `$NestedPromptLevel`           |                                              |
| `$null`                        | NULL                                         |
| `$OutputEncoding`              |                                              |
| `$PID`                         | ホストしているプロセスのプロセス識別子 (PID) |
| `$profile`                     | PowerShell プロファイルのパス                |
| `$ProgressPreference`          |                                              |
| `$PSBoundParameters`           |                                              |
| `$PSCommandPath`               |                                              |
| `$PSCulture`                   |                                              |
| `$PSDefaultParameterValues`    |                                              |
| `$PSEdition`                   |                                              |
| `$psEditor`                    |                                              |
| `$PSEmailServer`               |                                              |
| `$PSHOME`                      | PowerShell のインストールディレクトリのパス  |
| `$PSScriptRoot`                | スクリプトの実行元のディレクトリ             |
| `$PSSessionApplicationName`    |                                              |
| `$PSSessionConfigurationName`  |                                              |
| `$PSSessionOption`             |                                              |
| `$PSStyle`                     |                                              |
| `$PSUICulture`                 |                                              |
| `$PSVersionTable`              | PowerShell のバージョン                      |
| `$PWD`                         | カレントディレクトリ                         |
| `$ShellId`                     |                                              |
| `$StackTrace`                  |                                              |
| `$targetScriptPath`            |                                              |
| `$true`                        | True                                         |
| `$VerbosePreference`           |                                              |
| `$WarningPreference`           |                                              |
| `$WhatIfPreference`            |                                              |

#### 設定変数のみ一覧化
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
$array4 = @(0..4)
$array4 = 2,3,4
$array4 = 0..4

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


### ArrayList
<a id="markdown-arraylist" name="arraylist"></a>

```powershell
$list = New-Object -TypeName 'System.Collections.ArrayList';
$list.Add("lorem")
$list.Add("ipsum")
$list.Add(123)
$list.Add("dolor")
$list.Add("sit")
$list.Add(456)
$list.Add("amet")
$list.RemoveAt(0)
$list.RemoveRange(1,4)
$list.Count

$list | sort-object
```

> amet
>
> ipsum


### ハッシュテーブル
<a id="markdown-%E3%83%8F%E3%83%83%E3%82%B7%E3%83%A5%E3%83%86%E3%83%BC%E3%83%96%E3%83%AB" name="%E3%83%8F%E3%83%83%E3%82%B7%E3%83%A5%E3%83%86%E3%83%BC%E3%83%96%E3%83%AB"></a>

```powershell
# 連想配列の宣言と代入
$table = @{key1 = "value1"; key2 = "value2"; key3 = "value3"}

# 順序付けられたディクショナリ
$table = [ordered]@{key1 = "value1"; key2 = "value2"; key3 = "value3"}

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

$table.GetEnumerator() | ForEach-Object {
  $key = $_.Key
  $value = $_.Value

  $key + ": " + $value
}

```

> key3: value3
> key1: value1
> key2: value2


## 画面出力
<a id="markdown-%E7%94%BB%E9%9D%A2%E5%87%BA%E5%8A%9B" name="%E7%94%BB%E9%9D%A2%E5%87%BA%E5%8A%9B"></a>
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
<a id="markdown-%E3%83%87%E3%83%90%E3%83%83%E3%82%B0%E5%87%BA%E5%8A%9B" name="%E3%83%87%E3%83%90%E3%83%83%E3%82%B0%E5%87%BA%E5%8A%9B"></a>

#### Write-Error
<a id="markdown-write-error" name="write-error"></a>
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


## 数値計算
<a id="markdown-%E6%95%B0%E5%80%A4%E8%A8%88%E7%AE%97" name="%E6%95%B0%E5%80%A4%E8%A8%88%E7%AE%97"></a>

### 四捨五入
<a id="markdown-%E5%9B%9B%E6%8D%A8%E4%BA%94%E5%85%A5" name="%E5%9B%9B%E6%8D%A8%E4%BA%94%E5%85%A5"></a>

#### 小数
<a id="markdown-%E5%B0%8F%E6%95%B0" name="%E5%B0%8F%E6%95%B0"></a>

```powershell
$numVal = [Math]::Round(1.4, [MidpointRounding]::AwayFromZero)
$numVal # 1
$numVal = [Math]::Round(1.5, [MidpointRounding]::AwayFromZero)
$numVal # 2

$numVal = [Math]::Round(-1.4, [MidpointRounding]::AwayFromZero)
$numVal # -1
$numVal = [Math]::Round(-1.5, [MidpointRounding]::AwayFromZero)
$numVal # -2

# 小数点以下第一位まで残す
$numVal = [Math]::Round(0.04, 1, [MidpointRounding]::AwayFromZero)
$numVal # 0
$numVal = [Math]::Round(0.05, 1, [MidpointRounding]::AwayFromZero)
$numVal # 0.1
```

#### 整数
<a id="markdown-%E6%95%B4%E6%95%B0" name="%E6%95%B4%E6%95%B0"></a>

```powershell
function Round([double]$num, [int]$numDigits)
{
    $m = [Math]::Pow(10, -1 * $numDigits)
    return [Math]::Round($num * $m, [MidpointRounding]::AwayFromZero) / $m
}

$numVal = Round 1234 2
$numVal # 1200
```

### 切り捨て
<a id="markdown-%E5%88%87%E3%82%8A%E6%8D%A8%E3%81%A6" name="%E5%88%87%E3%82%8A%E6%8D%A8%E3%81%A6"></a>

```powershell
$numVal = [Math]::Truncate(1.5)
$numVal # 1
$numVal = [Math]::Floor(1.5)
$numVal # 1

function Truncate([double]$num, [int]$numDigits = 0)
{
    $m = [Math]::Pow(10, $numDigits)
    return [Math]::Truncate($num * $m) / $m
}
$numVal = Truncate 1.234 2
$numVal # 1.23
$numVal = Truncate -1.234 2
$numVal # -1.23
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


## Windows Update
<a id="markdown-windows-update" name="windows-update"></a>

```powershell
$windowsUpdate = New-Object -ComObject "Microsoft.Update.AutoUpdate"
$windowsUpdate.Settings
$windowsUpdate.Results
```

```
NotificationLevel         : 4
ReadOnly                  : False
Required                  : True
ScheduledInstallationDay  : 0
ScheduledInstallationTime : 3
IncludeRecommendedUpdates : True
NonAdministratorsElevated : True
FeaturedUpdatesEnabled    : False

LastSearchSuccessDate LastInstallationSuccessDate
--------------------- ---------------------------
yyyy/mm/dd h:mm:ss    yyyy/mm/dd h:mm:ss
```


## Windows Firewall
<a id="markdown-windows-firewall" name="windows-firewall"></a>

```powershell
$fw = new-object -com HNetCfg.FwMgr
$profile = $fw.LocalPolicy.CurrentProfile
$profile
```

```
Type                                         : 1
FirewallEnabled                              : True
ExceptionsNotAllowed                         : False
NotificationsDisabled                        : False
UnicastResponsesToMulticastBroadcastDisabled : False
RemoteAdminSettings                          : System.__ComObject
IcmpSettings                                 : System.__ComObject
GloballyOpenPorts                            : System.__ComObject
Services                                     : System.__ComObject
AuthorizedApplications                       : System.__ComObject
```


## プロセス
<a id="markdown-%E3%83%97%E3%83%AD%E3%82%BB%E3%82%B9" name="%E3%83%97%E3%83%AD%E3%82%BB%E3%82%B9"></a>

```powershell
Get-Process |
Where-Object {(($_.ProcessName -like "*firefox*") -or ($_.ProcessName -like "*chrome*"))} |
Select-Object -Property ProcessName,CPU |
Group-Object ProcessName |
Select-Object @{n='ProcessName';e={$_.Group | Select -Expand ProcessName -First 1}},@{n='CPU';e={($_.Group | Measure-Object CPU -Sum).Sum}} |
Sort-Object -Property cpu -Descending
```

| プロパティ  | 内容                                                                       | 単位           |
| ----------- | -------------------------------------------------------------------------- | -------------- |
| CPU(s)      | すべてのプロセッサで使用したプロセッサ時間                                 | 秒単位         |
| Handles     | オープンしたハンドルの数                                                   |                |
| ID          | プロセスID（PID）                                                          |                |
| NPM(K)      | 使用している非ページメモリのサイズ                                         | キロバイト単位 |
| PM(K)       | 使用しているページ可能なメモリのサイズ                                     | キロバイト単位 |
| ProcessName | プロセスの名前                                                             |                |
| VM(M)       | 使用している仮想メモリ（ディスク上のページングファイルの記憶領域）のサイズ | メガバイト単位 |
| WS(K)       | ワーキングセット（最近参照したメモリのページ）のサイズ                     | キロバイト単位 |


### アプリケーション
<a id="markdown-%E3%82%A2%E3%83%97%E3%83%AA%E3%82%B1%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3" name="%E3%82%A2%E3%83%97%E3%83%AA%E3%82%B1%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3"></a>


#### アプリケーション一覧
<a id="markdown-%E3%82%A2%E3%83%97%E3%83%AA%E3%82%B1%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3%E4%B8%80%E8%A6%A7" name="%E3%82%A2%E3%83%97%E3%83%AA%E3%82%B1%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3%E4%B8%80%E8%A6%A7"></a>

```powershell
Get-ItemProperty HKLM:Software\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName, DisplayVersion, Comments, Publisher, InstallDate | Format-Table -Property DisplayName,Publisher,DisplayVersion,InstallDate
```


#### Explorer
<a id="markdown-explorer" name="explorer"></a>

```powershell
$path = [System.Environment]::GetFolderPath("Desktop")

Start-Process $path
```

```powershell
$path = [System.Environment]::GetFolderPath("MyDocuments")

Invoke-Item $path
```


### ブラウザ
<a id="markdown-%E3%83%96%E3%83%A9%E3%82%A6%E3%82%B6" name="%E3%83%96%E3%83%A9%E3%82%A6%E3%82%B6"></a>

#### 既定のブラウザ
<a id="markdown-%E6%97%A2%E5%AE%9A%E3%81%AE%E3%83%96%E3%83%A9%E3%82%A6%E3%82%B6" name="%E6%97%A2%E5%AE%9A%E3%81%AE%E3%83%96%E3%83%A9%E3%82%A6%E3%82%B6"></a>

```powershell
start http://google.com
```

#### Edge
<a id="markdown-edge" name="edge"></a>

```powershell
start microsoft-edge:http://google.com
Start-Process microsoft-edge:https://google.com -WindowStyle maximized

[System.Diagnostics.Process]::Start("C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe", "-InPrivate https://google.com")
```

#### Firefox
<a id="markdown-firefox" name="firefox"></a>

```powershell
Start-Process 'C:\Program Files\Mozilla Firefox\firefox.exe' -argumentlist "-url http://google.com"

[System.Diagnostics.Process]::Start("C:\Program Files\Mozilla Firefox\firefox.exe", "-private-window https://google.com")
```


#### Office
<a id="markdown-office" name="office"></a>


##### Excel
<a id="markdown-excel" name="excel"></a>

```powershell
$excel = New-Object -ComObject Excel.Application
$excel.Workbooks.Open("C:\Users\Y\Desktop\excel.xlsx")
$excel.Visible = $true
$excel.DisplayAlerts = $False

$excel.Quit()
```


###### ファイル読み書き
<a id="markdown-%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E8%AA%AD%E3%81%BF%E6%9B%B8%E3%81%8D" name="%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E8%AA%AD%E3%81%BF%E6%9B%B8%E3%81%8D"></a>

```powershell
# Excelを開く
$excel = New-Object -ComObject Excel.Application
$excel.Visible = $true
$excel.DisplayAlerts = $False

# ファイルを開く
$book = $excel.Workbooks.Open("C:\Users\Y\Desktop\excel.xlsx")

# 名前を付けて保存
$book.SaveAs("C:\Users\Y\Desktop\excel2.xlsx")

# 閉じる
$excel.Quit()
$excel = $Null
[GC]::collect()
```

```powershell
# Excelを開く
$excel = New-Object -ComObject Excel.Application
$excel.Visible = $true
$excel.DisplayAlerts = $False

### 新規作成
$book = $excel.Workbooks.add()

# 名前を付けて保存
$book.SaveAs("C:\Users\Y\Desktop\excel2.xlsx")

# 閉じる
$excel.Quit()
$excel = $Null
[GC]::collect()
```


###### セル編集
<a id="markdown-%E3%82%BB%E3%83%AB%E7%B7%A8%E9%9B%86" name="%E3%82%BB%E3%83%AB%E7%B7%A8%E9%9B%86"></a>

```powershell
# Excelを開く
$excel = New-Object -ComObject Excel.Application
$excel.Visible = $true
$excel.DisplayAlerts = $False

### 新規作成
$book = $excel.Workbooks.add()
$sheet = $book.ActiveSheet

# セル編集
$sheet.Cells.Item(1,1) = "A1"
$sheet.Range("A1") = "A1A1"

$sheet.Cells.Item(1,1).Font.Bold = $True
$sheet.Cells.Item(1,1).Font.Size = 24
$sheet.Cells.Item(1,1).font.ColorIndex = 3
$sheet.Cells.Item(1,1).font.Name = "MS 明朝"
$sheet.Cells.Item(1,1).interior.ColorIndex = 6

# $sheet.Range("A2") = "=A1+1"
$sheet.Cells.Item(2,1) = "=A1&A1"

# 名前を付けて保存
$book.SaveAs("C:\Users\Y\Desktop\excel2.xlsx")

# 閉じる
$excel.Quit()
$excel = $Null
[GC]::collect()
```


##### PowerPoint
<a id="markdown-powerpoint" name="powerpoint"></a>

```powershell
$ppt = New-Object -ComObject PowerPoint.Application
$ppt.Presentations.open("C:\Users\Y\Desktop\ppt.pptx")
# `$ppt.visible = $true` なしで起動

$ppt.Quit()
```


##### Word
<a id="markdown-word" name="word"></a>

```powershell
$word = New-Object -ComObject word.application
$Word.documents.open("C:\Users\Y\Desktop\word.docx")
$word.visible = $true

$word.Quit()
```


#### SQL Server
<a id="markdown-sql-server" name="sql-server"></a>


#### その他アプリケーション
<a id="markdown-%E3%81%9D%E3%81%AE%E4%BB%96%E3%82%A2%E3%83%97%E3%83%AA%E3%82%B1%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3" name="%E3%81%9D%E3%81%AE%E4%BB%96%E3%82%A2%E3%83%97%E3%83%AA%E3%82%B1%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3"></a>

##### 音声合成
<a id="markdown-%E9%9F%B3%E5%A3%B0%E5%90%88%E6%88%90" name="%E9%9F%B3%E5%A3%B0%E5%90%88%E6%88%90"></a>

```powershell
$sapi = New-Object -com SAPI.SpVoice

$sapi.Rate     = 10 # -10 <= Rate <= 10
$sapi.Volume   =  0 # 0 <= Volume <= 100
$sapi.Voice = $sapi.GetVoices().Item(0)
# $sapi.Voice = $sapi.GetVoices().Item(1)

# $sapi.Speak("本日は、晴天なり。", 1) # Async
$sapi.Speak("本日は、晴天なり。") # Sync
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

## 日付の差
<a id="markdown-%E6%97%A5%E4%BB%98%E3%81%AE%E5%B7%AE" name="%E6%97%A5%E4%BB%98%E3%81%AE%E5%B7%AE"></a>

```powershell
$since    = [DateTime]::ParseExact("2022/02/28 01:23:45","yyyy/MM/dd HH:mm:ss", $null)
$until    = [DateTime]::ParseExact("2022/03/01 12:34:56","yyyy/MM/dd HH:mm:ss", $null)
$timeDiff = $until - $since

$timeDiff.Days
$timeDiff.Hours
$timeDiff.Minutes
$timeDiff.Seconds
```

> 1
>
> 11
>
> 11
>
> 11


# ファイル操作
<a id="markdown-%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E6%93%8D%E4%BD%9C" name="%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E6%93%8D%E4%BD%9C"></a>

## カレントディレクトリ
<a id="markdown-%E3%82%AB%E3%83%AC%E3%83%B3%E3%83%88%E3%83%87%E3%82%A3%E3%83%AC%E3%82%AF%E3%83%88%E3%83%AA" name="%E3%82%AB%E3%83%AC%E3%83%B3%E3%83%88%E3%83%87%E3%82%A3%E3%83%AC%E3%82%AF%E3%83%88%E3%83%AA"></a>

```powershell
# 実行中のパス取得/移動
[string] $dirPath = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $dirPath
```

## 特別なフォルダのパスを取得
<a id="markdown-%E7%89%B9%E5%88%A5%E3%81%AA%E3%83%95%E3%82%A9%E3%83%AB%E3%83%80%E3%81%AE%E3%83%91%E3%82%B9%E3%82%92%E5%8F%96%E5%BE%97" name="%E7%89%B9%E5%88%A5%E3%81%AA%E3%83%95%E3%82%A9%E3%83%AB%E3%83%80%E3%81%AE%E3%83%91%E3%82%B9%E3%82%92%E5%8F%96%E5%BE%97"></a>

```powershell
$path = [System.Environment]::GetFolderPath("Desktop")

# 特別なフォルダの一覧
[System.Enum]::GetValues([System.Environment+SpecialFolder])
```

## ファイル一覧
<a id="markdown-%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E4%B8%80%E8%A6%A7" name="%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E4%B8%80%E8%A6%A7"></a>

```powershell
$dirPath = [System.Environment]::GetFolderPath("Desktop")

Get-ChildItem -Path $dirPath -Recurse
```

## フォルダの合計サイズ（再帰）
<a id="markdown-%E3%83%95%E3%82%A9%E3%83%AB%E3%83%80%E3%81%AE%E5%90%88%E8%A8%88%E3%82%B5%E3%82%A4%E3%82%BA%EF%BC%88%E5%86%8D%E5%B8%B0%EF%BC%89" name="%E3%83%95%E3%82%A9%E3%83%AB%E3%83%80%E3%81%AE%E5%90%88%E8%A8%88%E3%82%B5%E3%82%A4%E3%82%BA%EF%BC%88%E5%86%8D%E5%B8%B0%EF%BC%89"></a>

```powershell
$dirPath = [System.Environment]::GetFolderPath("Desktop")

Function Format-FileSize() {
    Param ([int64]$size)
    If     ($size -gt 1TB) {[string]::Format("{0:0.00} TB", $size / 1TB)}
    ElseIf ($size -gt 1GB) {[string]::Format("{0:0.00} GB", $size / 1GB)}
    ElseIf ($size -gt 1MB) {[string]::Format("{0:0.00} MB", $size / 1MB)}
    ElseIf ($size -gt 1KB) {[string]::Format("{0:0.00} kB", $size / 1KB)}
    ElseIf ($size -gt 0)   {[string]::Format("{0:0.00} B", $size)}
    Else                   {""}
}

Get-ChildItem -Path $dirPath -Recurse -Force | ForEach-Object -Begin { $Len = 0 } -Process { $Len = $Len + $_.Length } -End { write-host ("total size is " + (Format-FileSize $Len)) }
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

## ファイルの作成日時・最終更新日時・最終アクセス日時
<a id="markdown-%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%81%AE%E4%BD%9C%E6%88%90%E6%97%A5%E6%99%82%E3%83%BB%E6%9C%80%E7%B5%82%E6%9B%B4%E6%96%B0%E6%97%A5%E6%99%82%E3%83%BB%E6%9C%80%E7%B5%82%E3%82%A2%E3%82%AF%E3%82%BB%E3%82%B9%E6%97%A5%E6%99%82" name="%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%81%AE%E4%BD%9C%E6%88%90%E6%97%A5%E6%99%82%E3%83%BB%E6%9C%80%E7%B5%82%E6%9B%B4%E6%96%B0%E6%97%A5%E6%99%82%E3%83%BB%E6%9C%80%E7%B5%82%E3%82%A2%E3%82%AF%E3%82%BB%E3%82%B9%E6%97%A5%E6%99%82"></a>

### 取得
<a id="markdown-%E5%8F%96%E5%BE%97" name="%E5%8F%96%E5%BE%97"></a>

```powershell
$file = ".\test.txt"

Out-File -encoding Default $file

$fc = Get-ChildItem $file
$fi = Get-ItemProperty $file

# 作成時刻
$fc.CreationTime
$fi.CreationTime

# 最終更新時刻
$fc.LastWriteTime
$fi.LastWriteTime

# 最終アクセス時刻
$fc.LastAccessTime
$fi.LastAccessTime
```

### 設定
<a id="markdown-%E8%A8%AD%E5%AE%9A" name="%E8%A8%AD%E5%AE%9A"></a>

```powershell
$file = ".\test.txt"

# 作成時刻
Set-ItemProperty $file CreationTime $(Get-Date)
Set-ItemProperty $file CreationTime $("2022/04/16 12:34:56")

# 最終更新時刻
Set-ItemProperty $file LastWriteTime $(Get-Date)
Set-ItemProperty $file LastWriteTime $("2022/04/16 12:34:56")

# 最終アクセス時刻
Set-ItemProperty $file LastAccessTime $(Get-Date)
Set-ItemProperty $file LastAccessTime $("2022/04/16 12:34:56")
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

## JSONファイル
<a id="markdown-json%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB" name="json%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB"></a>

### 読込み
<a id="markdown-%E8%AA%AD%E8%BE%BC%E3%81%BF" name="%E8%AA%AD%E8%BE%BC%E3%81%BF"></a>

```powershell
$json = ConvertFrom-Json -InputObject (Get-Content .\sample.json -Raw)
Write-Host $json.key1
```

### 書込み
<a id="markdown-%E6%9B%B8%E8%BE%BC%E3%81%BF" name="%E6%9B%B8%E8%BE%BC%E3%81%BF"></a>

```powershell
$jsonStr = @{
  "Foo Bar" = @{Key1=111; Key2="222"};
  "Hoge Piyo" = @{Key1=222; Key2="222"};
}

$jsonStr | ConvertTo-Json | Out-File .\sample.json -Encoding utf8 -Append
$jsonStr | ConvertTo-Json -Compress | Out-File .\sample.json -Encoding utf8 -Append
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

#### コメント行対応
<a id="markdown-%E3%82%B3%E3%83%A1%E3%83%B3%E3%83%88%E8%A1%8C%E5%AF%BE%E5%BF%9C" name="%E3%82%B3%E3%83%A1%E3%83%B3%E3%83%88%E8%A1%8C%E5%AF%BE%E5%BF%9C"></a>

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
$xml = New-Object System.Xml.XmlDocument
$xml.Load(".\test_read.xml")
Write-Output $xml.item.itemitem

# OR

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

## ZIPファイル
<a id="markdown-zip%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB" name="zip%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB"></a>

```powershell
Compress-Archive -Path .\*.ps1 -DestinationPath .\archive.zip

$date = Get-Date -Format "yyyyMMddHHmmss"
New-Item .\$date -ItemType Directory -Force
Expand-Archive -Path .\archive.zip -DestinationPath .\$date
Get-ChildItem .\*.zip | Expand-Archive -DestinationPath .\

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

# イベントログを取得
Get-WinEvent -FilterHashtable @{
    LogName='System', 'Application'
    Level=1,2,3
    StartTime=(Get-Date).Date.AddDays(-1)
} |
Select-Object -Property * | Format-Table -AutoSize -Wrap -Property TimeCreated,Id,Level,LevelDisplayName,ProviderName
```

#### Level キー
<a id="markdown-level-%E3%82%AD%E3%83%BC" name="level-%E3%82%AD%E3%83%BC"></a>

| Name          | Value |
| ------------- | ----- |
| Verbose       | 5     |
| Informational | 4     |
| Warning       | 3     |
| Error         | 2     |
| Critical      | 1     |
| LogAlways     | 0     |

## ISOファイル
<a id="markdown-iso%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB" name="iso%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB"></a>

### マウント
<a id="markdown-%E3%83%9E%E3%82%A6%E3%83%B3%E3%83%88" name="%E3%83%9E%E3%82%A6%E3%83%B3%E3%83%88"></a>

```powershell
$isoPath = "C:\disc1.iso"

Mount-DiskImage $isoPath
$driveLetter = (Get-DiskImage -ImagePath $isoPath | Get-Volume).DriveLetter
"{0}:\" -f $driveLetter | Write-Output
```

### アンマウント
<a id="markdown-%E3%82%A2%E3%83%B3%E3%83%9E%E3%82%A6%E3%83%B3%E3%83%88" name="%E3%82%A2%E3%83%B3%E3%83%9E%E3%82%A6%E3%83%B3%E3%83%88"></a>

```powershell
$isoPath = "C:\disc1.iso"

DisMount-DiskImage $isoPath
```


# ネットワーク
<a id="markdown-%E3%83%8D%E3%83%83%E3%83%88%E3%83%AF%E3%83%BC%E3%82%AF" name="%E3%83%8D%E3%83%83%E3%83%88%E3%83%AF%E3%83%BC%E3%82%AF"></a>


## URLエンコード
<a id="markdown-url%E3%82%A8%E3%83%B3%E3%82%B3%E3%83%BC%E3%83%89" name="url%E3%82%A8%E3%83%B3%E3%82%B3%E3%83%BC%E3%83%89"></a>

```powershell
$url = 'http://httpbin.org/get?query=あいうえお　12345 abc'

$escapedData = [Uri]::EscapeDataString($url)
Write-Host $escapedData
$unescapedData = [Uri]::UnescapeDataString($escapedData)

$escapedUri = [Uri]::EscapeUriString($url)
Write-Host $escapedUri
$unescapedUri = [Uri]::UnescapeDataString($escapedUri)

Add-Type -AssemblyName System.Web
$escapedUrl = [System.Web.HttpUtility]::UrlEncode($url)
Write-Host $escapedUrl
$unescapedUrl = [System.Web.HttpUtility]::UrlDecode($escapedUrl)
```

> http%3A%2F%2Fhttpbin.org%2Fget%3Fquery%3D%E3%81%82%E3%81%84%E3%81%86%E3%81%88%E3%81%8A%E3%80%8012345%20abc
>
> http://httpbin.org/get?query=%E3%81%82%E3%81%84%E3%81%86%E3%81%88%E3%81%8A%E3%80%8012345%20abc

> http%3a%2f%2fhttpbin.org%2fget%3fquery%3d%e3%81%82%e3%81%84%e3%81%86%e3%81%88%e3%81%8a%e3%80%8012345+abc


## ping
<a id="markdown-ping" name="ping"></a>

```powershell
Test-Connection -computername "localhost" -count 1 -Quiet

Test-Connection -computername "localhost" -count 1

Test-Connection -computername "nohost" -count 1 -Quiet # 存在しないホスト

Test-Connection -computername "nohost" -count 1
```

> True

>    Destination: localhost
>
>
>
> Ping Source           Address                   Latency BufferSize Status
>
>                                                    (ms)        (B)
>
> ---- ------           -------                   ------- ---------- ------
>
>    1 *******          ::1                             0         32 Success

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


## Webリクエスト
<a id="markdown-web%E3%83%AA%E3%82%AF%E3%82%A8%E3%82%B9%E3%83%88" name="web%E3%83%AA%E3%82%AF%E3%82%A8%E3%82%B9%E3%83%88"></a>

### GET
<a id="markdown-get" name="get"></a>

```powershell
# http://httpbin.org/get?q=qwerty
$url = 'http://httpbin.org/get'
$params = @{"q"="qwerty"}
$headers = @{Authorization="Bearer token"; accept="application/json"}


# $url = 'http://example.exampleexample'


try {
  $res = Invoke-WebRequest $url -Body $params  -Headers $headers
  $res.StatusCode.ToString() + " " + $res.StatusDescription
  Write-Host "Headers" $res.Headers
  Write-Host "Content" $res.Content
} catch {
  Write-Host $_.Exception
}
```

```powershell
# http://httpbin.org/get?q=qwerty
$url = 'http://httpbin.org/get'
$params = @{"q"="qwerty"}
$headers = @{Authorization="Bearer token"; accept="application/json"}

$res = Invoke-RestMethod $url -Headers $headers -Body $params
$res | FL
```

#### ファイルをダウンロードする
<a id="markdown-%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%82%92%E3%83%80%E3%82%A6%E3%83%B3%E3%83%AD%E3%83%BC%E3%83%89%E3%81%99%E3%82%8B" name="%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%82%92%E3%83%80%E3%82%A6%E3%83%B3%E3%83%AD%E3%83%BC%E3%83%89%E3%81%99%E3%82%8B"></a>

```powershell
$url = 'https://raw.githubusercontent.com/pandas-dev/pandas/main/pandas/tests/io/data/csv/iris.csv'
Invoke-WebRequest $url -Body $params -OutFile '.\iris.csv'
```

#### リンクURLの一覧を取得する
<a id="markdown-%E3%83%AA%E3%83%B3%E3%82%AFurl%E3%81%AE%E4%B8%80%E8%A6%A7%E3%82%92%E5%8F%96%E5%BE%97%E3%81%99%E3%82%8B" name="%E3%83%AA%E3%83%B3%E3%82%AFurl%E3%81%AE%E4%B8%80%E8%A6%A7%E3%82%92%E5%8F%96%E5%BE%97%E3%81%99%E3%82%8B"></a>

```powershell
$url = 'http://www.google.co.jp'
$res = Invoke-WebRequest $url

$links = $res.Links
$links | Where-Object {(($_.href -like "http://www.google.co.jp/intl/*") -or ($_.href -like "https://accounts.google.com/*"))} | Select-Object -ExpandProperty href
```

### POST
<a id="markdown-post" name="post"></a>

```powershell
# http://httpbin.org/post
$url = 'http://httpbin.org/post'

Invoke-WebRequest -Method Post -Body 'キー1=値1&キー2=値2' $url
Invoke-WebRequest -Method Post -Body @{キー1="値1"; キー2="値2"} $url # 連想配列の場合はマルチバイト文字がエスケープされる
Invoke-WebRequest -Method Post -Body '{ "key1":"val1", "key2":"val2" } }' $url

Invoke-WebRequest -Method Post -InFile src/icon.png $url
```

```powershell
# http://httpbin.org/post
$url = 'http://httpbin.org/post'
$params = @{"q"="qwerty"}
$headers = @{Authorization="Bearer token"; accept="application/json"}

$res = Invoke-RestMethod $url -Method 'POST' -Headers $headers -Body $params
$res | FL
```


## ネットワークアダプタ
<a id="markdown-%E3%83%8D%E3%83%83%E3%83%88%E3%83%AF%E3%83%BC%E3%82%AF%E3%82%A2%E3%83%80%E3%83%97%E3%82%BF" name="%E3%83%8D%E3%83%83%E3%83%88%E3%83%AF%E3%83%BC%E3%82%AF%E3%82%A2%E3%83%80%E3%83%97%E3%82%BF"></a>

```powershell
# ネットワークアダプター一覧
Get-NetAdapter | Format-Table
Get-NetAdapter | ? {$_.Name -eq "Wi-Fi"}
```

```powershell
# ネットワークアダプターのプロパティ
Get-NetAdapterBinding | Format-Table

# 設定変更
# Set-NetAdapterBinding -Name "Wi-Fi" -DisplayName "Internet Protocol Version 4 (TCP/IPv4)" -Enabled $True
Set-NetAdapterBinding -Name "Wi-Fi" -DisplayName "インターネット プロトコル バージョン 4 (TCP/IPv4)" -Enabled $True
Set-NetAdapterBinding -Name "Wi-Fi" -ComponentID ms_tcpip -Enabled $True
```

```powershell
# ネットワークアダプターの詳細設定
Get-NetAdapterAdvancedProperty | Format-Table
```

### IPアドレス
<a id="markdown-ip%E3%82%A2%E3%83%89%E3%83%AC%E3%82%B9" name="ip%E3%82%A2%E3%83%89%E3%83%AC%E3%82%B9"></a>

```powershell
# IPアドレスを取得
Get-NetIPAddress | Format-Table InterfaceAlias, IPAddress

# IPアドレス・デフォルトゲートウェイ・DNSサーバーを変更（削除→追加）
Remove-NetIPAddress -IPAddress '192.168.1.000'
New-NetIPAddress -InterfaceIndex 00 -AddressFamily IPv4 -IPAddress '192.168.1.000' -PrefixLength 24
Remove-NetRoute -InterfaceIndex 00 -NextHop 192.168.1.000
New-NetRoute -InterfaceIndex 00 -DestinationPrefix '0.0.0.0/0' -AddressFamily IPv4 -NextHop '192.168.1.000' -RouteMetric 0
Set-DnsClientServerAddress -InterfaceIndex 00 -ServerAddresses 192.168.1.000
```


<hr>

Copyright (c) 2022 YA-androidapp(https://github.com/YA-androidapp) All rights reserved.


