@minLength(3)
@maxLength(24)


param storname string

resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: storname
  location: 'EastUs'
  kind: 'StorageV2'
  sku: {
    name: 'Premium_LRS'
  }
}

