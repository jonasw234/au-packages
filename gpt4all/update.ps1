Import-Module au

$releases = 'https://api.github.com/repos/nomic-ai/gpt4all/releases/latest'

function global:au_SearchReplace
{
    @{
        ".\tools\chocolateyinstall.ps1" = @{
            "(^[$]url64\s*=\s*)('.*')" = "`$1'$( $Latest.URL64 )'"
            "(^[$]checksum64\s*=\s*)('.*')" = "`$1'$( $Latest.Checksum64 )'"
        }
    }
}

function global:au_GetLatest
{
    $AllProtocols = [System.Net.SecurityProtocolType]'Tls11,Tls12'
    [System.Net.ServicePointManager]::SecurityProtocol = $AllProtocols

    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $file    = '-win64-v.+\.exe$'
    $url     = (($download_page.Content | ConvertFrom-Json).assets | Where-Object browser_download_url -Match $file).browser_download_url
    $version = $url -split '\/download\/|\/' + $file | Select-Object -Last 1
    $version = $version -split '/'
    $version = $version[0]
    # Remove the first letter of the version
    $version = $version.Substring(1)

    return @{
        URL64   = $url
        Version = $version
    }
}

Update-Package -ChecksumFor 64
