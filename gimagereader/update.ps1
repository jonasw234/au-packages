import-module au

$releases = 'https://github.com/manisandro/gImageReader/releases'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*url64bit\s*=\s*)('.*')"   = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $AllProtocols = [System.Net.SecurityProtocolType]'Tls11,Tls12'
    [System.Net.ServicePointManager]::SecurityProtocol = $AllProtocols

    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $url64   = $download_page.links | ? href -match '_x86_64.exe$' | % href | select -First 1
    $url32   = $url64 -replace '_x86_64.exe$', '_i686.exe'
    $needle = '/manisandro/gImageReader/releases/tag/v'
    $version = $download_page.Content[($download_page.Content.IndexOf($needle) + $needle.Length)..($download_page.Content.IndexOf('"', $download_page.Content.IndexOf($needle)) - 1)] -Join ''

    @{
        URL32   = 'https://github.com' + $url32
        URL64   = 'https://github.com' + $url64
        Version = $version
    }
}

update
