##  Get all problems, for doc use swagger https://yourtenant.live.dynatrace.com/rest-api-doc/ ##
##  Kjetil Olafsen, December 2020 ##

# URL Endpoint
$DynaApiUri = 'https://yourtenant.live.dynatrace.com'+ "/api/v2/problems?from=now-24h&to=now-1m"

# Token
$DynaApiToken= 'yourtoken'

# Set Headers
$Headers = @{ Authorization = "Api-Token $DynaApiToken" }

# Run Query
$Result = Invoke-RestMethod -Uri $DynaApiUri -Method GET  -ContentType "application/json" -Headers $Headers

# Results + Create a Custom PS Object for Problems
$FinalResult = $Result # | ConvertTo-Json
$Problems = $FinalResult.problems
$ProblemReport = @()


foreach ($problem in $problems) {
$PSObject = New-Object PSObject -Property @{
    problemId          =$problem.problemId  
    displayId          =$problem.displayId
    title              =$problem.title
    impactLevel        =$problem.impactLevel
    severityLevel      =$problem.severityLevel
    status             =$problem.status
    affectedEntities   =$problem.affectedEntities
    impactedEntities   =$problem.impactedEntities
    rootCauseEntity    =$problem.rootCauseEntity
    managementZones    =$problem.managementZones
    entityTags         =$problem.entityTags 
    problemFilters     =$problem.problemFilters
    startTime          =$problem.startTime
    endTime            =$problem.endTime 
  }
  $ProblemReport += $PSObject

  }

# Show the report
$ProblemReport
