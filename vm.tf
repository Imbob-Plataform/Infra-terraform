resource "azurerm_resource_group" "example"{
  name = "example-resources"
  location = "West Europe"

resource "azurerm_virtual_network" "example" {
  name = "example-network"
  address_space = []
  location = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_subnet" "example" {
  name = "internal"
  resource_group_name = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_prefixes = []
}

resource "azurerm_network_interface" "example" {
  name = "example-nic"
  location = azurerm_resource_group.example.location

admin_ssh_key {
  username = "adminuser"
  public_key = file("~/.ssh/id_rsa.pub")
 }