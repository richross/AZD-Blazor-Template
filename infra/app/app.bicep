param name string
param location string
param tags object = {}
param appServicePlanId string

resource appServ 'Microsoft.Web/sites@2022-03-01' = {
  name: name
  location: location
  tags: union(tags, {'azd-service-name': 'blazorApp'})
  kind: 'linux'
  properties: {
    serverFarmId: appServicePlanId
  }
}
