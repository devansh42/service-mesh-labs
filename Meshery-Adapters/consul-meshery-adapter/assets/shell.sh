#!/bin/bash
echo "Waiting for the environment to be set up, it would take around 10 secs"
sleep 25s
echo "Setting up a Minikube cluster..."

while [ ! -e $HOME/.kube/config ];do
    cd $HOME && minikube start
done
echo "minikube installed"
echo "Almost done..."
sleep 10s
cd $HOME/.kube && kubectl config view --minify --flatten > config

echo "Your environment has been set up with a Minikube cluster. You may now begin the tutorial"