#!/bin/bash
# Declare variables (bash syntax)
export PREFIX='geamie'
export PREFIX_LOWER=$(echo $PREFIX | tr '[:upper:]' '[:lower:]')
export RG_NAME='RG-DV-CMPDNA_CORP-EUS2'
export VNET_NAME='vn-NonProdDNA-eus2'
export VNET_RG_NAME='rg-GBDNA-NonProd-eus2'
export SUBNET_INT_NAME='VnetIntegrationSubnet'
export SUBNET_PVT_NAME='PrivateEndpointSubnet'
export SUBNET_FW_NAME='AzureFirewallSubnet'
export LOCATION='eastus2'
export TEAMS_IP_RANGE='52.112.0.0/14 52.122.0.0/15'
export TEAMS_IP_RANGE=('52.112.0.0/14' '52.122.0.0/15')
export FIREWALL_NAME=${PREFIX}'-afw-'${LOCATION}
export VNET_CIDR='172.23.192.0/19'
export FW_SUBNET_CIDR='172.23.211.0/26'
export INTEGRATION_SUBNET_CIDR='172.23.212.0/24'
export ENDPOINT_SUBNET_CIDR='172.23.223.0/24'
export MANAGED_IDENTITY=${PREFIX}'-msi'
export BOT_ID=${PREFIX}
export APP_SVC_NAME=${PREFIX}'-as'
export SVC_PLAN_NAME=${PREFIX}'-sp'
export APP_SVC_NAME_LOWER=$(echo $APP_SVC_NAME | tr '[:upper:]' '[:lower:]')
export BOT_ENDPOINT='https://'${APP_SVC_NAME_LOWER}'.azurewebsites.net/api/messages'
export TENANT_ID=$(az account show --query "tenantId" --output tsv) #'973ba820-4a58-4246-84bf-170e50b3152a' #
export REG_NAME=${PREFIX_LOWER}'reg'
export CONTAINER_IMAGE_NAME=${REG_NAME}'.azurecr.io/'${PREFIX_LOWER}'/appcontainer:latest'

# TO DO: If networking parameters above change, the following values may need to be changed
export AS_PRIVATE_ADDR='172.23.223.4'
export FW_INT_ADD='172.23.211.4'

# TO DO: Databricks (existing) resources
export DBX_RG_NAME='RG-DV-CMPDNA_CORP-EUS2'
export DBX_VNET_NAME='vn-NonProdDNA-eus2'
export DBX_PL_DNS_ZONE='privatelink.azuredatabricks.net'

# TO DO: Databricks Workspace and Genie settings; DATABRICKS_TOKEN should be commented or set to an empty string if using Managed Identity
export DATABRICKS_SPACE_ID='01f035fc6bd31a92b930c4bd20d5410b'
export DATABRICKS_HOST="https://adb-4687815777645220.0.azuredatabricks.net"
# export DATABRICKS_TOKEN=""