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

    $re      = '-x86_64-pc-windows-gnu\.zip$'
    $domain  = $releases -split '(?<=//.+)/' | Select-Object -First 1
    $url     = $download_page.links | Where-Object href -match $re | Select-Object -First 1 -expand href | ForEach-Object {$domain + $_ }
    $version = $url -split '[-]|.zip' | Select-Object -First 1 -Skip 1

    return @{
        Version      = $version
        URL64        = $url
    }
}

update -ChecksumFor 64 -NoCheckChocoVersion
