#!/bin/bash

kubectl apply -f udacity-c3-deployment/k8s

kubectl set image deployments/backend-feed backend-feed=ajitesh1/udacity-restapi-feed:$SHA
kubectl set image deployments/backend-user backend-user=ajitesh1/udacity-restapi-user:$SHA
kubectl set image deployments/frontend frontend=ajitesh1/udacity-frontend:$SHA
kubectl set image deployments/reverseproxy reverseproxy=ajitesh1/udacity-reverseproxy:$SHA