Import-Module au

$releases = 'https://api.github.com/repos/phiresky/ripgrep-all/releases/latest'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url64bit\s*=\s*)('.*')"   = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $AllProtocols = [System.Net.SecurityProtocolType]'Tls11,Tls12'
    [System.Net.ServicePointManager]::SecurityProtocol = $AllProtocols

    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $url64   = (($download_page.Content | ConvertFrom-Json).assets | Where-Object browser_download_url -match '-x86_64-pc-windows-msvc.(7z|zip)$').browser_download_url
    $version = (Split-Path ( Split-Path $url64 ) -Leaf).Replace('v', '')

    @{
        URL64   = $url64
        Version = $version
    }
}

Update-Package -ChecksumFor all
