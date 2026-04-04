pwsh D:\GithubRecRivenVI\PowerShell-Tools\Update-GitHubRepoFileTimestamp.ps1
Get-ChildItem | Where-Object { $_.PSIsContainer }|
ForEach-Object{
    $foldername = "$($_.name).zip"
    $folderpath = "$($_.fullname)\*"
    & 7z a -tzip "$foldername" "$folderpath"
}
pwsh D:\GithubRecRivenVI\PowerShell-Tools\Update‑ArchiveFileTimestamp.ps1