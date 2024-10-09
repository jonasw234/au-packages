Import-Module au

$releases = 'https://www.freeoffice.com/en/download/applications'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $url32   = $download_page.links | Where-Object href -match 'freeoffice20\d{2}\.msi$' | ForEach-Object href | Select-Object -First 1
    $url32 -match '\d{4}'
    $year = $matches[0]
    ($download_page.links | Where-Object outerHTML -match 'Revision' | Select-Object -First 1).outerHTML -match 'revision \d+'
    $version = $matches[0].split()[1]

    @{
        URL32   = 'https://www.freeoffice.com' + $url32
        Version = $year + '.' + $version
    }
}

Update-Package -ChecksumFor all
