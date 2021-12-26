Import-Module au
. $PSScriptRoot\..\_scripts\all.ps1

$releases = 'https://dist.0patch.com/download/latestagent'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $version = $download_page.Headers.'Content-Disposition'.Split('_')[1].Replace('.msi', '')

    @{
        Version = $version
    }
}

Update-Package -ChecksumFor All
