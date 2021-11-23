import-module au
. $PSScriptRoot\..\_scripts\all.ps1

$releases = 'https://www.tec-it.com/de/download/free-software/qrcode-studio/Download.aspx'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"      = "`$1'$($Latest.URL)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $AllProtocols = [System.Net.SecurityProtocolType]'Tls11,Tls12'
    [System.Net.ServicePointManager]::SecurityProtocol = $AllProtocols

    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $url     = 'https://www.tec-it.com/download/QRCode_Studio.exe'
    $version = $download_page | Select-String 'Windows .+\<br /\>(\d+(\.\d+)*)' | ForEach-Object {$_.Matches} | ForEach-Object {$_.Groups[1]} | ForEach-Object {$_.Value}

    @{
        URL     = $url
        Version = $version
    }
}

update -ChecksumFor 32
