Import-Module au

$releases = 'https://api.github.com/repos/manisandro/gImageReader/releases/latest'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            # "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*url64bit\s*=\s*)('.*')"   = "`$1'$($Latest.URL64)'"
            # "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $AllProtocols = [System.Net.SecurityProtocolType]'Tls11,Tls12'
    [System.Net.ServicePointManager]::SecurityProtocol = $AllProtocols

    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $url64   = (($download_page.Content | ConvertFrom-Json).assets | Where-Object browser_download_url -match '\d_qt5_x86_64\.exe$').browser_download_url
    # $url32   = $url64 -replace '_x86_64.exe$', '_i686.exe' # x86 version is not available as of 2022-03-09 / v3.4.0
    $needle = '/manisandro/gImageReader/releases/tag/v'
    $version = $download_page.Content[($download_page.Content.IndexOf($needle) + $needle.Length)..($download_page.Content.IndexOf('"', $download_page.Content.IndexOf($needle)) - 1)] -Join ''

    @{
        # URL32   = 'https://github.com' + $url32
        URL64   = $url64
        Version = $version
    }
}

Update-Package -ChecksumFor 64
