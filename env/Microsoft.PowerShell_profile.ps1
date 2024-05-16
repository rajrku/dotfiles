#This file should be located in ~/.config/powershell/Microsoft.PowerShell_profile.ps1
#Setting AzureRegion helps prevent us from bumping up against our per-region storage quotas.
$env:AzureRegion = "westus2"
$env:AzureSubscriptionId = "6d3acc75-039d-4a84-a0c2-883e492a72dd"   #This line isn't needed if you're only testing OnPrem.

function co { git checkout users/rajenr/$args }
function coma { git checkout master; git pull }
function comain { git checkout main; git pull }
function cco { git checkout -b users/rajenr/$args }
function push { git push -u origin users/rajenr/$args }
function branches { git branch }
function status { git status }
function diff { git diff }
function commit { git commit -am "$args" }
