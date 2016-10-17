$ErrorActionPreference= 'silentlycontinue'
Get-ChildItem c:\Users\ -include *.xlsx, *.docx, *.pdf, *.doc, *.xls, *.zip, *.txt, *.png, *.jpg, *.jpeg, *.csv, *.vsd, *.vsdx -recurse | Where-Object {$_.LastWriteTime -gt (Get-Date).AddDays(-1710) -AND $_.LastWriteTime -lt (Get-Date).AddDays(-365)} | % {Write-Host $_.LastWriteTime " - " $_.Fullname}
