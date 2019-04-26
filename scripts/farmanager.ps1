Write-Host Downloading Far Manager msi

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$url="https://www.farmanager.com/files/Far30b5354.x64.20190117.msi"
(New-Object System.Net.WebClient).DownloadFile($url, "$env:TEMP\Far30b5354.x64.20190117.msi")

Write-Host Installing Far Manager

msiexec /qb /i "$env:TEMP\Far30b5354.x64.20190117.msi"