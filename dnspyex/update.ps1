import-module au

$releases = 'https://github.com/dnSpyEx/dnSpy/releases'

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

    $url32   = $download_page.links | Where-Object href -match '-win32\.zip$' | ForEach-Object href | Select-Object -First 1
    $url64   = $download_page.links | Where-Object href -match '-win64\.zip$' | ForEach-Object href | Select-Object -First 1
    $version = $url32 -split '\/v' -split '\/' -match '\d+(\.\d+)*' | Select-Object -First 1

    return @{
        URL32   = 'https://github.com' + $url32
        URL64   = 'https://github.com' + $url64
        Version = $version
    }
}

update -ChecksumFor all
