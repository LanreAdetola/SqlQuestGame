@description('Admin username for Azure SQL')
param sqlAdminUser string = 'sqladmin'

@secure()
@description('Admin password for Azure SQL')
param sqlAdminPassword string

@description('Azure region for all resources')
param location string = resourceGroup().location

// ---------- SQL Server ----------
resource sqlServer 'Microsoft.Sql/servers@2022-05-01-preview' = {
  name: 'sqlquest-sqlserver'
  location: location
  properties: {
    administratorLogin: sqlAdminUser
    administratorLoginPassword: sqlAdminPassword
  }
}

// ---------- SQL Database ----------
resource sqlDb 'Microsoft.Sql/servers/databases@2022-05-01-preview' = {
  name: 'sqlquest-db'
  parent: sqlServer
  properties: {
    sku: {
      name: 'Basic'
      tier: 'Basic'
      capacity: 5
    }
  }
}

// ---------- App Service Plan ----------
resource appPlan 'Microsoft.Web/serverfarms@2022-03-01' = {
  name: 'sqlquest-plan'
  location: location
  sku: {
    name: 'B1'
    tier: 'Basic'
  }
}

// ---------- Web App (Backend API) ----------
resource webApp 'Microsoft.Web/sites@2022-03-01' = {
  name: 'sqlquest-api'
  location: location
  properties: {
    serverFarmId: appPlan.id
    siteConfig: {
      connectionStrings: [
        {
          name: 'DefaultConnection'
          connectionString: 'Server=tcp:${sqlServer.name}.database.windows.net,1433;Initial Catalog=${sqlDb.name};User ID=${sqlAdminUser};Password=${sqlAdminPassword};Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;'
          type: 'SQLAzure'
        }
      ]
    }
  }
}

// ---------- Outputs ----------
output sqlServerName string = sqlServer.name
output sqlDbName string = sqlDb.name
output apiUrl string = webApp.defaultHostName
