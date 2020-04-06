# Udagram App
A simple cloud application to run multiple microservices in Kueberntes at AWS. 

## Tech Stack
- Docker 
- Kubernetes 
- AWS ECS

## Steps 
1. Switch the folder: `cd udacity-c3-deployment/docker`
2. Build the images: `docker-compose -f docker-compose-build.yaml build --parallel`
3. Push the images: `docker-compose -f docker-compose-build.yaml push`
4. Run the container: `docker-compose up`
5. Create the cluster: `eksctl create cluster --name udagram`
6. Desploy the Kubenetes application: `kubectl apply -f udacity-c3-deployment/k8s`
7. Get the running pods: `kubectl get pods`
8. Get the running services: `kubectl get services`
9. Enable your repository on travis-ci.com
10. Create a .travis.yml file that lists the steps of the build process
11. Push the .travis.yml to our GitHub repo 
