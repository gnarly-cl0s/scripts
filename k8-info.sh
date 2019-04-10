#!/bin/bash

echo "Cluster details"
sudo kubectl cluster-info 
echo
sleep 1

echo "Listing all namespaces"
sudo kubectl get namespaces
echo
sleep 1

echo "Listing all pods in plain-text output format and including additional information"
sudo kubectl get pods --all-namespaces -o wide
echo
sleep 1 

echo "Listing deployments in all namespaces"
sudo kubectl get deployments --all-namespaces -o wide
echo
sleep 1

echo "Listing services in all namespaces" 
sudo kubectl get svc --all-namespaces -o wide
echo
sleep 1

echo "Listing joined nodes"
sudo kubectl get nodes --all-namespaces -o wide
echo
sleep 1

echo "Listing network policies"
sudo kubectl get netpol --all-namespaces -o wide

