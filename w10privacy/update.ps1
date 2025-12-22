Import-Module Chocolatey-AU
. $PSScriptRoot\..\_scripts\all.ps1

$releases = 'https://www.instalki.pl/download/programy/windows/bezpieczenstwo/zabezpieczajace/w10privacy/'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url64bit\s*=\s*)('.*')"   = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $url     = 'https://download.instalki.org/programy/Windows/Bezpieczenstwo/zabezpieczajace/W10Privacy.zip'
    $download_page.Content -match '<span class="version">(\d+(\.\d+){0,5}\.\d+)</span>'
    $version = $matches[1]

    @{
        Version = $version
        URL64   = $url
    }
}

Update-Package -ChecksumFor 64
