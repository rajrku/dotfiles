#!/bin/bash
echo "Setting up workspace..."
echo "Starting github service..."

GH_STATUS=`service github status`
echo "Github service status: " $GH_STATUS

if [[ "$GH_STATUS" == "Stopped" ]]
then
  nohup service github start 
fi

echo "Successfully started github service..."
echo "Starting actions services..."
minikube profile actions-dev
minikube status

if [[ $? -ne 0 ]]
then
  echo "Starting actions service..."
  nohup /workspaces/github/script/actions/start-actions
  script/setup-codespaces-runner.ps1
fi
echo "Successfully started actions services..."
