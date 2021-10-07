### add az spring-cloud dependency
#az login

az extension add -n spring-cloud -y

#  git config --global user.name "Wren Alien"

#$RG = CloudLasso_Spring


az group create -l uksouth -n CloudLasso_Spring
az spring-cloud create -n malibu -g CloudLasso_Spring --sku standard 
az resource list -g "CloudLasso_Spring"  


az spring-cloud config-server git set --name malibu --resource-group CloudLasso_Spring --uri https://github.com/CloudLassoUK/CloudSpring.git --label main --password Appleton77** --username wren@cloudlasso.net

















######CLeanup
#####az group delete  -g "CloudLasso_Spring"