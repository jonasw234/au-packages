Import-Module au
. $PSScriptRoot\..\_scripts\all.ps1

$releases = 'https://api.github.com/repos/xiaoyifang/goldendict-ng/releases/latest'

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $AllProtocols = [System.Net.SecurityProtocolType]'Tls11,Tls12'
    [System.Net.ServicePointManager]::SecurityProtocol = $AllProtocols

    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $re32 = 'GoldenDict-.+-Installer\.exe'
    $json = ($download_page.Content | ConvertFrom-Json).assets
    $url32 = ($json | Where-Object browser_download_url -match $re32).browser_download_url | Select-Object -Last 1
    $version = ((($url32 -split '/')[7] -split 'v')[1] -split '-')[0]

    @{
        URL32   = $url32
        Version = $version
    }
}

Update-Package -ChecksumFor 32
