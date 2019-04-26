Write-Host Downloading vs-dockerfiles-master

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$url="https://github.com/dobrovols/vs-dockerfiles/archive/master.zip"
(New-Object System.Net.WebClient).DownloadFile($url, "$env:TEMP\buildtools.zip")
Expand-Archive -Path $env:TEMP\buildtools.zip -DestinationPath $env:TEMP -Force

cd $env:TEMP\vs-dockerfiles-master\native-desktop

Write-Host Building docker image for buildtools2017native

docker build -t buildtools2017native:latest -m 2GB .

Write-Host buildtools2017native image created