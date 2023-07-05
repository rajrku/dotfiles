#!/bin/bash
echo "Setting up workspace..."
echo "Starting github service..."

GH_STATUS=`service github status`
echo "Github service status: " $GH_STATUS

if [[ "$GH_STATUS" == "Stopped" ]]
then
  # nohup service github start 
  nohup /workspaces/github/script/server 
  service github start
  service launch start
fi

echo "Successfully started github service..."
echo "Starting actions services..."
minikube profile actions-dev
minikube status

if [[ $? -ne 0 ]]
then
  echo "Starting actions service..."
  # nohup /workspaces/github/script/actions/start-actions
  /workspaces/actions/actions-dotnet/src/script/setup-codespaces-runner.ps1
  src
  b
  deploy mps,token,actions,runner -DeployAzureRelay
fi
echo "Successfully started actions services..."
