resource mysa 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: saname
  location: location
  sku: {
    name:  'Standard_LRS'
  }
  kind:  'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}

var saname = 'sa${uniqueString(resourceGroup().id)}'

param location string = 'WestEurope'
