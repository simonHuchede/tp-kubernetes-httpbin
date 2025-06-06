#!/bin/bash
kubectl create namespace httpbin-test --dry-run=client -o yaml | kubectl apply -f -
kubectl apply -f configmap.yaml
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

