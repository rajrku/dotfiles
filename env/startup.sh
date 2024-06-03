#!/bin/bash

GH_STATUS=`service github status`
echo "Github service status: " $GH_STATUS

if [[ "$GH_STATUS" == "Stopped" ]]
then
	( cd $SKYRISE_PATH && script/build && script/setup-codespaces-runner.ps1 && reset-tenant-mapping )

	# Ensure Launch/Kreds are started in the background
	( service launch start && service kredz-service start )

	# Start dotcom in the background
	(cd $GITHUB_PATH && script/dx/server-start )
fi

kubectl get pods | grep -i runner 

if [[ $? -ne 0 ]]
then
    echo "Starting actions service..."
    # nohup /workspaces/github/script/actions/start-actions
    cd /workspaces/actions/actions-dotnet/src/
    & ./init.sh "Connect-Azure"
    script/setup-codespaces-runner.ps1
fi

echo "Successfully started actions services..."
