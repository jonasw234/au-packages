Import-Module au

$releases = 'https://api.github.com/repos/sleuthkit/autopsy/releases/latest'

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
    $url32   = $json | Where-Object browser_download_url -match '-32bit.msi$' | Select-Object -First 1 -expand browser_download_url
    $url64   = $json | Where-Object browser_download_url -match '-64bit.msi$' | Select-Object -First 1 -expand browser_download_url
    $version = (Split-Path ( Split-Path $url64 ) -Leaf).Split('-')[1]

    @{
        URL32   = $url32
        URL64   = $url64
        Version = $version
    }
}

Update-Package -ChecksumFor All
