# create the container build agent
docker build -t acrforakscluster.azurecr.io/dockeragent:ubuntu-18.04 .

# run the container build agent in host machine
docker run -e AZP_URL=https://dev.azure.com/houssemdellai `
  -e AZP_TOKEN=azpff4ljxyq4rwwg2ri74qmln4yx25g7alnr3folywi3dnbiqrva `
  -e AZP_POOL=linux-containers-aks `
  acrforakscluster.azurecr.io/dockeragent:ubuntu-18.04

# deploy a Deployment to run the container build agent in Kubernetes
kubectl apply -f dployment-agent.yaml

# deploy KEDA's scaledObject to scale out/in the build agents based on number of waiting jobs:
kubectl apply -f scaledObject-keda.yaml