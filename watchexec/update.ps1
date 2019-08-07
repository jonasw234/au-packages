import-module au

$releases = 'https://github.com/watchexec/watchexec/releases'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url64bit\s*=\s*)('.*')"     = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $AllProtocols = [System.Net.SecurityProtocolType]'Tls11,Tls12'
    [System.Net.ServicePointManager]::SecurityProtocol = $AllProtocols

    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $re      = '-x86_64-pc-windows-gnu.zip$'
    $url     = $download_page.links | ? href -match $re | select -First 1 -expand href
    $version = $url -split '[-]|.zip' | select -First 1 -Skip 1

    @{
        Version      = $version
        url64        = 'https://github.com' + $url
    }
}

update
