lr runner -command 'Set-RunnerResourceGroup -SubscriptionId 8a53cb9a-a3a5-4602-aa2d-8c171edde3c7 -ResourceGroupName rajrku-minikube4'
lr runner -command 'Set-TrustTierLimit -Tier Trusted -Limit 104000; Set-TrustTierLimit -Tier Neutral -Limit 26000'

echo "Launch this link before proceeding further... http://127.0.0.1/organizations/github/settings/actions/github-hosted-runners/new"
echo "Create a new larger runner..."

READ-Host "Are you ready?(y/n)"

echo
echo
echo 
$hostId = READ-HOST "Get the HostId from tbl_ServiceHost..."
echo 'lr runner -command “Set-HostTierLimit  -Limit 20000 -Tier Trusted -HostId $hostId”'
