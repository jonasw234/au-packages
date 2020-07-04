import-module au

$releases = 'https://github.com/federico-terzi/espanso/releases'

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

    $url32   = $download_page.links | ? href -match '-win-installer.exe$' | select -First 1 -expand href
    $version = $url32.split('/v')[6]

    @{
        URL32   = 'https://github.com' + $url32
        Version = $version
    }
}

update -ChecksumFor 32
