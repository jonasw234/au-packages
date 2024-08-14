Import-Module au

$releases = 'https://api.github.com/repos/qarmin/czkawka/releases/latest'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]url64\s*=\s*)('.*')" = "`$1'$( $Latest.URL64 )'"           #1
            "(^[$]checksum64\s*=\s*)('.*')" = "`$1'$( $Latest.Checksum64 )'"      #2
        }
    }
}

function global:au_GetLatest {
    $AllProtocols = [System.Net.SecurityProtocolType]'Tls11,Tls12'
    [System.Net.ServicePointManager]::SecurityProtocol = $AllProtocols

    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $file    = 'windows_krokiet\.exe$'
    $url     = (($download_page.Content | ConvertFrom-Json).assets | Where-Object browser_download_url -Match $file).browser_download_url
    $version = $url -split '\/download\/|\/' + $file
    $version = $version[1]

    return @{
        URL64   = $url
        Version = $version
    }
}

Update-Package -ChecksumFor 64
