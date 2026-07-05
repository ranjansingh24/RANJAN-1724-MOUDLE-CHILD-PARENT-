resource "azurerm_virtual_network" "that" {
  name = var.vnetdetails
  location = var.location
  resource_group_name =var.rg
  address_space = var.address


}
