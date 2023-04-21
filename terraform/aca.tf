
resource "azurerm_log_analytics_workspace" "acadapr" {
  name                = "${var.projectName}-LAW"
  location            = azurerm_resource_group.baseRG.location
  resource_group_name = azurerm_resource_group.baseRG.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

resource "azurerm_container_registry" "acadapr" {
  name                = "${var.projectName}acr"
  resource_group_name = azurerm_resource_group.baseRG.name
  location            = azurerm_resource_group.baseRG.location
  sku                 = "Basic"
  admin_enabled       = true

}

resource "azurerm_container_app_environment" "acadapr" {
  name                       = "${var.projectName}-ACE"
  location                   = azurerm_resource_group.baseRG.location
  resource_group_name        = azurerm_resource_group.baseRG.name
  log_analytics_workspace_id = azurerm_log_analytics_workspace.nicegui.id
}
