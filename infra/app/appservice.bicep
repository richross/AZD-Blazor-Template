param name string
param location string
param tags object= {}


// create an App Service Plan for a targetscope of Subscription
resource appServicePlan 'Microsoft.Web/serverfarms@2022-03-01' = {
  name: name
  location: location
  tags: tags
  sku: {
    name: 'S1'
    tier: 'Standard'
  }
  kind: 'linux'
}

output id string = appServicePlan.id
output name string = appServicePlan.name
