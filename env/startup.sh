#!/bin/bash
echo "Setting up workspace..."
echo "Starting github service..."

GH_STATUS=`service github status`
echo "Github service status: " $GH_STATUS

if [[ "$GH_STATUS" == "Stopped" ]]
then
  # nohup service github start 
  cd /workspaces/github
  nohup script/server &
  service github start
  service launch start
fi

echo "Successfully started github service..."
echo "Starting actions services..."
minikube profile actions-dev
minikube status

kubectl get pods | grep -i runner 

if [[ $? -ne 0 ]]
then
  echo "Starting actions service..."
  # nohup /workspaces/github/script/actions/start-actions
  cd /workspaces/actions/actions-dotnet/src/
  script/setup-codespaces-runner.ps1
fi
echo "Successfully started actions services..."
