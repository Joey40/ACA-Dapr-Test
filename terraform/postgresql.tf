resource "azurerm_postgresql_flexible_server" "acadapr" {
  name                   = "acadapr-psql"
  resource_group_name    = azurerm_resource_group.baseRG.name
  location               = azurerm_resource_group.baseRG.location
  version                = "14"
  administrator_login    = "dapr"
  administrator_password = "wordle"
  zone                   = "2"

  storage_mb = 32768

  sku_name   = "B_Standard_B1ms"
}

resource "azurerm_postgresql_flexible_server_database" "acadapr" {
  name      = "acadapr-db"
  server_id = azurerm_postgresql_flexible_server.acadapr.id
  collation = "en_US.utf8"
  charset   = "utf8"
}
