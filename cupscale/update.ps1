Import-Module au

$releases = 'https://api.github.com/repos/n00mkrad/cupscale/releases/latest'

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

    $file    = 'cupscale[^/]+\.zip$'
    $url     = (($download_page.Content | ConvertFrom-Json).assets | Where-Object browser_download_url -match $file).browser_download_url
    $version = $url -split '\/download\/|\/' + $file
    $version = $version[1]

    return @{
        URL     = $url
        Version = $version
    }
}

Update-Package -ChecksumFor all
