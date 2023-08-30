resource "azurerm_resource_group" "network" {
  name     = "${local.workspace}-network"
  location = "West Europe"
}

resource "azurerm_resource_group" "database" {
  name     = "${local.workspace}-database"
  location = "West Europe"
}

resource "azurerm_resource_group" "storage_account" {
  name     = "${local.workspace}-storage-account"
  location = "West Europe"
}

resource "azurerm_resource_group" "key_vault" {
  name     = "${local.workspace}-key-vault"
  location = "West Europe"
}

resource "azurerm_resource_group" "kubernetes" {
  name     = "${local.workspace}-kubernetes"
  location = "West Europe"
}
