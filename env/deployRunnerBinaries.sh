b
if  [[$? -ne 0]]
then
  deploy -DeployAzureRelay runner -UseExistingDatabases; kubectl get all | grep -i pod/runner-job | cut -d " " -f1 | xargs kubectl logs -f
fi
