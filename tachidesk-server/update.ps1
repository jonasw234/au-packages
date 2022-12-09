Import-Module au

$releases = 'https://api.github.com/repos/Suwayomi/Tachidesk-Server/releases/latest'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
            "(?i)(^\s*url64bit\s*=\s*)('.*')"   = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $AllProtocols = [System.Net.SecurityProtocolType]'Tls11,Tls12'
    [System.Net.ServicePointManager]::SecurityProtocol = $AllProtocols

    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $json    = ($download_page.Content | ConvertFrom-Json).assets
    $url32   = ($json | Where-Object browser_download_url -match '-x86.msi$').browser_download_url
    $url64   = ($json | Where-Object browser_download_url -match '-x64.msi$').browser_download_url
    $version = (Split-Path ( Split-Path $url64 ) -Leaf).Split('/v')[1]

    @{
        URL32   = $url32
        URL64   = $url64
        Version = $version
    }
}

Update-Package -ChecksumFor All
