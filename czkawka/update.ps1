Import-Module au

$releases = 'https://github.com/qarmin/czkawka/releases'

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

    $file    = 'windows_czkawka_gui\.zip$'
    $url     = $download_page.links | Where-Object href -match $file | ForEach-Object href | Select-Object -First 1
    $version = $url -split '\/download\/|\/' + $file
    $version = $version[1]

    return @{
        URL64   = 'https://github.com' + $url
        Version = $version
    }
}

Update-Package -ChecksumFor 64
