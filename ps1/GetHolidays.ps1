# Copyright (c) 2022 YA-androidapp(https://github.com/YA-androidapp) All rights reserved.


$term = '2022'
$url = 'https://www8.cao.go.jp/chosei/shukujitsu/syukujitsu.csv'


$res = Invoke-WebRequest $url
$content = [System.Text.Encoding]::GetEncoding("Shift_JIS").GetString( [System.Text.Encoding]::GetEncoding("ISO-8859-1").GetBytes($res.Content) )
$holidays = $content.split("`r`n")

$result = @{}
$holidays | Where-Object { $_.StartsWith($term) } | ForEach-Object {
    $result.add([System.DateTime]::ParseExact($_.Split(',')[0], "yyyy/M/d", $null).ToString("yyyy/MM/dd"), $_.Split(',')[1])
}
$result.GetEnumerator() | Sort-Object -Property Key
