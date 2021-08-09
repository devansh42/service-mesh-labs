#!/bin/bash
echo "Setting up a Minikube cluster..."

while [ ! -e $HOME/.kube/config ];do
    cd $HOME && minikube start
    sleep 4s
done
echo "minikube installed"
cd $HOME/.kube && kubectl config view --minify --flatten > config

echo "Your environment has been set up with a Minikube cluster. You may now begin the tutorial"