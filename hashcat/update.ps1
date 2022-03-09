Import-Module au

$releases = 'https://github.com/hashcat/hashcat/releases'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url64Bit\s*=\s*)('.*')"   = "`$1'$($Latest.URL)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum)'"
        }
    }
}

function global:au_GetLatest {
    $AllProtocols = [System.Net.SecurityProtocolType]'Tls11,Tls12'
    [System.Net.ServicePointManager]::SecurityProtocol = $AllProtocols

    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $re      = 'hashcat-(\d\.)+\d\.7z$'
    $url     = $download_page.links | Where-Object href -match $re | ForEach-Object href | Select-Object -First 1
    $version = $url -split '\/v|\/' + $re
    $version = $version[1]

    return @{
        URL     = 'https://github.com' + $url
        Version = $version
    }
}

Update-Package -ChecksumFor 64
