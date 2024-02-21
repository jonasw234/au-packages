Import-Module au

$stableReleases = 'https://api.github.com/repos/Suwayomi/Suwayomi-Server/releases/latest'
$preReleases = 'https://api.github.com/repos/Suwayomi/Suwayomi-Server-preview/releases/latest'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
            "(?i)(^\s*url64bit\s*=\s*)('.*')"   = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $AllProtocols = [System.Net.SecurityProtocolType]'Tls11,Tls12'
    [System.Net.ServicePointManager]::SecurityProtocol = $AllProtocols

    # Get the latest stable release information
    $latestStableRelease = Invoke-WebRequest -Uri $stableReleases -UseBasicParsing | ConvertFrom-Json

    # Get the latest pre-release information
    $latestPreRelease = Invoke-WebRequest -Uri $preReleases -UseBasicParsing | ConvertFrom-Json

    # Extract release dates
    $stableReleaseDate = [datetime]$latestStableRelease.published_at
    $preReleaseDate = [datetime]$latestPreRelease.published_at

    # Determine which release is more up-to-date based on release dates
    if ($stableReleaseDate -gt $preReleaseDate) {
        $latestRelease = $latestStableRelease
    } else {
        $latestRelease = $latestPreRelease
        $latestRelease.tag_name = $latestPreRelease.tag_name.split("-")[0] + ".1-" + $latestPreRelease.tag_name.split("-")[1] # Manually increment version string to indicate newer version
        $latestRelease.tag_name += "-rc" # Manually append `-rc` for pre-releases
    }

    # Extract URL of the release
    $url32 = ($latestRelease.assets | Where-Object { $_.browser_download_url -match '-x86.msi$' }).browser_download_url
    $url64 = ($latestRelease.assets | Where-Object { $_.browser_download_url -match '-x64.msi$' }).browser_download_url

    # Cut first character from the version string
    $version = $latestRelease.tag_name.Substring(1)

    @{
        URL32   = $url32
        URL64   = $url64
        Version = $version
    }
}

Update-Package -ChecksumFor All
