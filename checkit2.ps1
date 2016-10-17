$r = [System.Net.WebRequest]::Create("http://virustotal.com/")
$resp = $r.GetResponse()
$reqstream = $resp.GetResponseStream()
$sr = new-object System.IO.StreamReader $reqstream
$result = $sr.ReadToEnd()
$output = $result
If ($output -Match 'mailcontrol'){Write-Host "Forcepoint is Operational"}
	Else{Write-Host "Error with Forcepoint install"}