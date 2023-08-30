resource "azurerm_virtual_network" "self" {
  name                = local.workspace
  location            = azurerm_resource_group.network.location
  resource_group_name = azurerm_resource_group.network.name
  address_space       = [module.subnet_addrs.base_cidr_block]
}