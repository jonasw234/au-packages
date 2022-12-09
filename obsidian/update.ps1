Import-Module au
. $PSScriptRoot\..\_scripts\all.ps1

$releases = 'https://api.github.com/repos/obsidianmd/obsidian-releases/releases/latest'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
            "(?i)(^\s*url64bit\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $AllProtocols = [System.Net.SecurityProtocolType]'Tls11,Tls12'
    [System.Net.ServicePointManager]::SecurityProtocol = $AllProtocols

    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $re32    = 'Obsidian\.([^-]*).*32\.exe'
    $json    = ($download_page.Content | ConvertFrom-Json).assets
    $url32   = ($json | Where-Object browser_download_url -match $re32).browser_download_url
    $re64    = 'Obsidian\.([^-]*).*64\.exe'
    $url64   = ($json | Where-Object browser_download_url -match $re64).browser_download_url
    $version = $url32 -match $re32
    $version = $matches[1]

    @{
        URL32   = $url32
        URL64   = $url64
        Version = $version
    }
}

Update-Package -ChecksumFor all
