# resource "azurerm_subnet" "example" {
#   name                 = "example-subnet"
#   resource_group_name  = azurerm_resource_group.aks-auto.name
#   virtual_network_name = azurerm_virtual_network.self.name
#   address_prefixes     = [module.subnet_addrs.base_cidr_block].[local.database]
#   service_endpoints    = ["Microsoft.Storage"]

#   delegation {
#     name = "delegation"

#     service_delegation {
#       name    = "Microsoft.DBforPostgreSQL/flexibleServers"
#       actions = ["Microsoft.Network/virtualNetworks/subnets/join/action", "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action"]
#     }
#   }
# }

resource "azurerm_subnet" "internal" {
  name                 = "internal"
  virtual_network_name = azurerm_virtual_network.example.name
  resource_group_name  = azurerm_resource_group.example.name
  address_prefixes     = ["10.1.0.0/22"]
}