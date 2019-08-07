import-module au

$releases = 'https://github.com/watchexec/watchexec/releases'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*[$]url64\s*=\s*)('.*')"   = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*[$]checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $AllProtocols = [System.Net.SecurityProtocolType]'Tls11,Tls12'
    [System.Net.ServicePointManager]::SecurityProtocol = $AllProtocols

    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $url64   = $download_page.links | ? href -match '-x86_64-pc-windows-gnu.zip$' | % href | select -First 1
    $version = (Split-Path ( Split-Path $url64 ) -Leaf)

    return @{ URL64 = 'https://github.com' + $url64; Version = $version }
}

update
