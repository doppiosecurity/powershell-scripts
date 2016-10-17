$dateEnd = get-date 
$poop = 'someone@there.org'
$dateStart = $dateEnd.AddHours(-300)

Get-MessageTrace -RecipientAddress $poop -StartDate $dateStart -EndDate $dateEnd | Select-Object Received, SenderAddress, RecipientAddress, Subject, Status, ToIP, FromIP, Size, MessageID, MessageTraceID | Out-GridView