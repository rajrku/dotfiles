#!/bin/bash
echo
echo "Status:"
echo "********************************************************"
echo -n "Github Service Status: "
service github status
echo -n "Launch Service Status: "
service launch status
echo "********************************************************"
echo -n "Kredz Service Status: "
service kredz-service status
echo "********************************************************"
echo
echo "Actions Pods Status: "
echo "********************************************************"
echo 
kubectl get pods --all-namespaces
echo
echo "********************************************************"
