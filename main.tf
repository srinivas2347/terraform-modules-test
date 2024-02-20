resource "azurerm_resource_group" "rg" {
  name     = var.rgname
  location = var.location
}

resource "azurerm_virtual_network" "vnet1" {
  name                = var.vnetname
  address_space       = var.ventaddress_space
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "snet01" {
  name                 = var.snet01name
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = var.snet01-address_prefixes
}
resource "azurerm_subnet" "snet02" {
  name                 = var.snet02name
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = var.snet02-address_prefixes
}