#!/bin/bash
kubectl scale deployment mssql  --replicas=0
sleep 3
kubectl scale deployment mssql  --replicas=1

kubectl get pods | grep mssql
