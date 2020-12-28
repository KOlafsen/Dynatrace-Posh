##  Get Problem Details for a Dynatrace example problem "5424702098125890850_1608163200000V2" /Swagger https://yourtenant.live.dynatrace.com/rest-api-doc/ ##
## Kjetil Olafsen, December 2020 ##

# URL
$DynaApiUri = 'https://yourtenant.live.dynatrace.com'+ "/api/v2/problems/5424702098125890850_1608163200000V2"

# Token
$DynaApiToken= 'yourtoken'

# Set Headers
$Headers = @{ Authorization = "Api-Token $DynaApiToken" }

# Run Query
$Result = Invoke-RestMethod -Uri $DynaApiUri -Method GET  -ContentType "application/json" -Headers $Headers
# Convert result to JSON and show problem
$FinalResult = $Result  | ConvertTo-Json
$FinalResult
# Show Problem and evidence details
$Result.evidenceDetails.details


