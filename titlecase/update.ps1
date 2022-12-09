Import-Module au
. $PSScriptRoot\..\_scripts\all.ps1

$releases = 'https://api.github.com/repos/wezm/titlecase/releases/latest'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"          = "`$1'$($Latest.URL)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"     = "`$1'$($Latest.Checksum)'"
            "(?i)(^\s*url64bit\s*=\s*)('.*')"     = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $AllProtocols = [System.Net.SecurityProtocolType]'Tls11,Tls12'
    [System.Net.ServicePointManager]::SecurityProtocol = $AllProtocols

    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $re      = '-i686-pc-windows-msvc.zip$'
    $json    = ($download_page.Content | ConvertFrom-Json).assets
    $url32   = ($json | Where-Object browser_download_url -match $re).browser_download_url
    $re64    = '-x86_64-pc-windows-msvc$'
    $url64   = ($json | Where-Object browser_download_url -match $re64).browser_download_url
    $version = $url64 -split '[-]|.zip' | select -First 1 -Skip 1
    $version = $version.substring(1)

    @{
        Version      = $version
        URL          = $url
        URL64        = $url64
    }
}

Update-Package -ChecksumFor all
