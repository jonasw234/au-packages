import-module au

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

    $url32   = $download_page.links | Where-Object href -match 'freeoffice2018\.msi$' | ForEach-Object href | Select-Object -First 1
    $version = ($download_page.links | Where-Object outerHTML -match 'Revision' | Select-Object -First 1).outerHTML.SubString(45).split()[0]

    @{
        URL32   = 'https://www.freeoffice.com' + $url32
        Version = '2018.' + $version
    }
}

update
