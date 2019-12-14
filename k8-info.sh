#!/bin/bash
# Simple Bash Script to check on K8 cluster status

echo "Cluster Details"
kubectl cluster-info
echo
sleep 1

echo "Listing all Namespaces"
kubectl get namespaces
echo
sleep 1

echo "Listing all pods in plain-text output format and including additional information"
kubectl get pods --all-namespaces -o wide
echo
sleep 1

echo "Listing deployments in all Namespaces"
kubectl get deployments --all-namespaces -o wide
echo
sleep 1

echo "Listing services in all Namespaces"
kubectl get svc --all-namespaces -o wide
echo
sleep 1

echo "Listing pv in all Namespaces"
kubectl get pv --all-namespaces -o wide
echo
sleep 1

echo "Listing sa in all Namespaces"
kubectl get sa --all-namespaces -o wide
echo
sleep 1

echo "Listing sc in all Namespaces"
kubectl get sc --all-namespaces -o wide
echo
sleep 1

echo "Listing joined Nodes"
kubectl get nodes --all-namespaces -o wide
echo
sleep 1

echo "Listing network policies"
kubectl get netpol --all-namespaces -o wide
