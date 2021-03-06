##  Get All Events ##
##  Kjetil Olafsen, December 2020 ##

# URL
$DynaApiUri = 'https://yourtenant.live.dynatrace.com'+ "/api/v1/events"

# Token
$DynaApiToken= 'yourtoken'

# Set Headers
$Headers = @{ Authorization = "Api-Token $DynaApiToken" }

# Run Query
$Result = Invoke-RestMethod -Uri $DynaApiUri -Method GET  -ContentType "application/json" -Headers $Headers

# Results + Create a Custom PS Object for Events
$FinalResult = $Result # | ConvertTo-Json
$Events = $FinalResult.events
$EventReport = @()


foreach ($event in $events) {
$PSObject = New-Object PSObject -Property @{
    eventId     =  $event.eventId   
    startTime   =  $event.startTime  
    endTime     =  $event.endTime   
    entityId    =  $event.entityId    
    entityName  =  $event.entityName   
    impactLevel =  $event.impactLevel   
    eventType   =  $event.eventType   
    eventStatus =  $event.eventStatus   
    tags        =  $event.eventStatus   
    id          =  $event.id   
    source      =  $event.source   
  }
  $EventReport += $PSObject

  }

# Show the report
$EventReport
