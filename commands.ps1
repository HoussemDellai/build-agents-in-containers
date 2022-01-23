docker run -e AZP_URL=https://dev.azure.com/houssemdellai `
  -e AZP_TOKEN=azpff4ljxyq4rwwg2ri74qmln4yx25g7alnr3folywi3dnbiqrva `
  -e AZP_POOL=linux-containers-aks `
  acrforakscluster.azurecr.io/dockeragent:ubuntu-18.04


kubectl create secret generic azdevops `
  --from-literal=AZP_URL=https://dev.azure.com/houssemdellai `
  --from-literal=AZP_TOKEN=azpff4ljxyq4rwwg2ri74qmln4yx25g7alnr3folywi3dnbiqrva `
  --from-literal=AZP_POOL=linux-containers-aks