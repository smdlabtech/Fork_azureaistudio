@description('Location of the resources')
param location string = resourceGroup().location

@allowed([
  'S0'
])
param sku string = 'S0'

//var cosmosDbName = '${uniqueString(resourceGroup().id)}-cosmosdb'
var storageAccountName = '${uniqueString(resourceGroup().id)}sa'
var searchServiceName = '${uniqueString(resourceGroup().id)}-search'
var cognitiveServiceNameSpeech = '${uniqueString(resourceGroup().id)}-speech'
//var cognitiveServiceNameOAI = '${uniqueString(resourceGroup().id)}-openai'

var locations = [
  {
    locationName: location
    failoverPriority: 0
    isZoneRedundant: false
  }
]

/*resource cosmosDbAccount 'Microsoft.DocumentDB/databaseAccounts@2022-05-15' = {
  name: cosmosDbName
  location: location
  kind: 'GlobalDocumentDB'
  properties: {
    consistencyPolicy: {
      defaultConsistencyLevel: 'Session'
    }
    databaseAccountOfferType: 'Standard'
    locations: locations
  }
}*/

resource storageAccount 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
    isHnsEnabled: true
  }
}

resource searchService 'Microsoft.Search/searchServices@2022-09-01' = {
  name: searchServiceName
  location: location
  sku: {
    name: 'standard'
  }
}

resource cognitiveService1 'Microsoft.CognitiveServices/accounts@2021-10-01' = {
  name: cognitiveServiceNameSpeech
  location: location
  sku: {
    name: sku
  }
  kind: 'SpeechServices'
  properties: {
    apiProperties: {
      statisticsEnabled: false
    }
  }
}

/*resource cognitiveService2 'Microsoft.CognitiveServices/accounts@2021-10-01' = {
  name: cognitiveServiceNameOAI
  location: location
  sku: {
    name: sku
  }
  kind: 'OpenAI'
  properties: {
    apiProperties: {
      statisticsEnabled: false
    }
  }
}*/

//output cosmosDbEndpoint string = cosmosDbAccount.properties.documentEndpoint
output storageAccountName string = storageAccount.name
output searchServiceName string = searchService.name
output cognitiveServiceNameSpeech string = cognitiveService1.name
//output cognitiveServiceNameOAI string = cognitiveService2.name
