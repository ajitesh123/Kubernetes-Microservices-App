# Udagram App
A simple cloud application to run multiple microservices in Kueberntes at AWS. 

## Tech Stack
- Docker: Install Docker and register at Docker Hub
- Kubernetes: Install Kubectl and minikube  
- AWS ECS: Install AWS CLI and EKS CLI 

## Steps to Complete the Project
1. Create a AWS RDS database 
2. Create a AWS S3 bucker instance 
3. Create the base 64 encoding for aws-secret.yml and env-secret.yml file:
```
echo -n <String to convert> | base64
```

## Steps to Deploy
1. Switch the folder: `cd udacity-c3-deployment/docker`
2. Build the images: `docker-compose -f docker-compose-build.yaml build --parallel`
3. Push the images: `docker-compose -f docker-compose-build.yaml push`
4. Run the container: `docker-compose up`
5. Create the cluster: `eksctl create cluster --name udagram`
6. Desploy the Kubenetes application: `kubectl apply -f udacity-c3-deployment/k8s`
7. Get the running pods: `kubectl get pods`
8. Get the running services: `kubectl get services`
10. Forward the service to local port:
```
kubectl port-forward pod/frontend... 8100:80
kubectl port-forward pod/reverseproxy... 8080:8080
```
11. Enable your repository on travis-ci.com
12. Create a .travis.yml file that lists the steps of the build process
13. Push the .travis.yml to our GitHub repo 