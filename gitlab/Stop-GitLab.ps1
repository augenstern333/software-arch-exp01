$ErrorActionPreference='Stop'
wsl.exe -d Exp01-GitLab -- docker compose -f /mnt/d/SVNWork/gitlab-deploy/compose.yaml stop
Write-Host 'GitLab stopped. Persistent data are retained in Docker volumes inside D:\SVNWork\gitlab-deploy\wsl.'
