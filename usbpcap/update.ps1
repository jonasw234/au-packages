import-module au
. $PSScriptRoot\..\_scripts\all.ps1

$releases = 'https://github.com/desowin/usbpcap/releases'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"      = "`$1'$($Latest.URL)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $AllProtocols = [System.Net.SecurityProtocolType]'Tls11,Tls12'
    [System.Net.ServicePointManager]::SecurityProtocol = $AllProtocols

    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $re      = 'USBPcapSetup-(\d+\.)*\d+\.exe'
    $url     = $download_page.links | Where-Object href -match $re | ForEach-Object href | Select-Object -First 1
    $version = $url -split 'download\/|\/' + $re
    $version = $version[1]

    @{
        URL     = 'https://github.com' + $url
        Version = $version
    }
}

update -ChecksumFor all
