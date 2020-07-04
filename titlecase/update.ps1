import-module au
. $PSScriptRoot\..\_scripts\all.ps1

$releases = 'https://github.com/wezm/titlecase/releases'

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
    $domain  = $releases -split '(?<=//.+)/' | select -First 1
    $url     = $download_page.links | ? href -match $re | select -First 1 -expand href
    $url     = $url | % {$domain + $_ }
    $re      = '-x86_64-pc-windows-msvc.zip$'
    $url64   = $download_page.links | ? href -match $re | select -First 1 -expand href
    $url64   = $url64 | % {$domain + $_ }
    $version = $url64 -split '[-]|.zip' | select -First 1 -Skip 1
    $version = $version.substring(1)

    @{
        Version      = $version
        URL          = $url
        URL64        = $url64
    }
}

update -ChecksumFor 32
update -ChecksumFor 64
