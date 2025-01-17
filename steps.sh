docker build -t nginx-custom:latest .
az acr create --resource-group test-vms --name pavloregistry --sku Basic
az acr login --name pavloregistry
docker tag nginx-custom pavloregistry.azurecr.io/nginx-custom:latest
docker push pavloregistry.azurecr.io/nginx-custom:latest
az acr repository list --name pavloregistry --output table