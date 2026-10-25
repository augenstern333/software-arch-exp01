$ErrorActionPreference='Stop'
wsl.exe -d Exp01-GitLab -- docker info *> $null
if ($LASTEXITCODE -ne 0) {
    Start-Process -FilePath 'wsl.exe' -ArgumentList '-d Exp01-GitLab --exec /usr/local/bin/exp01-docker' -WindowStyle Hidden
    $ready=$false
    for($i=0;$i -lt 30;$i++) {
        Start-Sleep -Seconds 2
        wsl.exe -d Exp01-GitLab -- docker info *> $null
        if($LASTEXITCODE -eq 0){$ready=$true;break}
    }
    if(-not $ready){throw 'Docker Engine did not become ready; inspect /var/log/exp01-dockerd.log in Exp01-GitLab.'}
}
wsl.exe -d Exp01-GitLab -- docker compose -f /mnt/d/SVNWork/gitlab-deploy/compose.yaml up -d
Write-Host 'GitLab: http://127.0.0.1:8929 (first startup may take several minutes)'
