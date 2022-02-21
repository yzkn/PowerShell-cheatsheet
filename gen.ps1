$date = Get-Date -Format "yyyyMMddHHmmss";
$f = ".\bak";

if ((Test-Path $f) -eq $false) {
    New-Item $f -ItemType Directory
}
$dest = Join-Path $f ("ReadMe_" + $date + ".md")
Move-Item -Path ".\ReadMe.md" -Destination $dest -Force

Get-ChildItem ".\src" -Recurse -File -Filter "*.md" | Sort-Object Name | % { Get-Content $_.FullName -Encoding UTF8 | Add-Content -Encoding UTF8 "ReadMe.md"; Add-Content "ReadMe.md" -Encoding UTF8 -Value "`r`n" }
# SIG # Begin signature block
# MIIFYwYJKoZIhvcNAQcCoIIFVDCCBVACAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQURYCkQlbVDamv+Fu7BGOaDVV2
# DPegggMCMIIC/jCCAeagAwIBAgIQaOwrzy97A6BP/kQMH0EhAjANBgkqhkiG9w0B
# AQsFADAWMRQwEgYDVQQDDAtQU+iovOaYjuabuDAgFw0yMjAyMjEwODU1MzBaGA8y
# MDk4MTIzMTE1MDAwMFowFjEUMBIGA1UEAwwLUFPoqLzmmI7mm7gwggEiMA0GCSqG
# SIb3DQEBAQUAA4IBDwAwggEKAoIBAQDsFPqrRhlfVdmaSjz3luBzYXE5GQFyu7Iq
# jzHkdAuGsqN3ga4B1jeaIPoWH09zkKZdjYGY8eRJuTCnxrSM0zwbjAPIlHaF/5bI
# dkqldYowgUkWbj7I3TcpcMY/LFchXRkIjR6HKPSuWC4LEvDUkqLq5LuHi+/cWieT
# Jmh2mLyceFZikrMbm12+ggOf3pArbHoB7Xa4F/zfKgFQHV69tQJqenGMAX1350qb
# lrX7xeZvTaOVkNFdJM32K6IxK6ydPMPQUMXdltBvK00ira2NiUfuP0FrubJy1suQ
# WyEeOdafMvVSEpuGJEyn1m+7n9ZzfVzkEzd3QOYJy76aOrmHAxqNAgMBAAGjRjBE
# MA4GA1UdDwEB/wQEAwIHgDATBgNVHSUEDDAKBggrBgEFBQcDAzAdBgNVHQ4EFgQU
# aiRLBHYbDkp7Nx3K8On1S4hMFkswDQYJKoZIhvcNAQELBQADggEBAM0yJvGthlfQ
# yUJ5BdO1uNqQ8fT/DsOUABI1Q7d40K97cuYYkrktjIuXAi9hyn0SWe4Mi2zKqc6l
# bpEe+Rf3l5uufsFtHeETK4gHlZnraluzhgd1EOKVVARnpzxBDSSe4X8WmeEfQMH6
# ifdmA0DDv+hcFH3eEcskh6QF47wL7EZKpXDHP9FoequMOveTPr07B/uZCBXxj/o6
# k/AbhhW5S8uTz1pC796ermxmj5HAk6sUHE7Prq2eApSS8hzo0Ijaj/h/MOvTJ9Na
# YgLBXDFgkohAzLnXgqMyaQ8rQv83iEF1rMGutHe3IRnjOI7NQISoz0uu4fU24ECc
# XyEo5heVv5cxggHLMIIBxwIBATAqMBYxFDASBgNVBAMMC1BT6Ki85piO5pu4AhBo
# 7CvPL3sDoE/+RAwfQSECMAkGBSsOAwIaBQCgeDAYBgorBgEEAYI3AgEMMQowCKAC
# gAChAoAAMBkGCSqGSIb3DQEJAzEMBgorBgEEAYI3AgEEMBwGCisGAQQBgjcCAQsx
# DjAMBgorBgEEAYI3AgEVMCMGCSqGSIb3DQEJBDEWBBROUKUD8urXxd9j/HqpwdXe
# RgL+gDANBgkqhkiG9w0BAQEFAASCAQBXTtLliKtPp0ZkYD5x8iw+8YftRHc1L1gE
# 9qRMGWNj3fblPDrCcsfpZA0eGHJ3Pf/kk2u3xRIvXj/k/lb2lCZbGHHQpiQWI+90
# TYhOmMAtCGbm3GNo78UH92X8UUKdxaVjlkqrxLyhuxVB78jI/fMYV1WqiXtIGmZ2
# 6zmvgm2Gl30daPRdNsV7UpgoDniLnd5WWk2dTa9Kz4wpb8mGTDS0ggLuYXKPE9sH
# C1Rs2ZKSq+swSshP6HvnXYkiYjAV+9OjgO28P6agJPM0TGp8Z289hACFVaZYc/YK
# RWb5Oihuih2AKfBbw6xWtoxmUdR4xp1d+bc8Iij9wYNC7uQCMDT/
# SIG # End signature block
