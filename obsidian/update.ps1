Import-Module au
. $PSScriptRoot\..\_scripts\all.ps1

$releases = 'https://api.github.com/repos/obsidianmd/obsidian-releases/releases/latest'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url64bit\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $AllProtocols = [System.Net.SecurityProtocolType]'Tls11,Tls12'
    [System.Net.ServicePointManager]::SecurityProtocol = $AllProtocols

    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $json    = ($download_page.Content | ConvertFrom-Json).assets
    $re64    = 'Obsidian[.-](\d+\.)+\d+\.exe'
    $url64   = ($json | Where-Object browser_download_url -match $re64).browser_download_url
    $version = (($url64 -split '/')[7] -split 'v')[1]

    @{
        URL64   = $url64
        Version = $version
    }
}

Update-Package -ChecksumFor 64
