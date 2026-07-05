resource "azurerm_subnet" "room" {
  name                 = var.subnetdetails
  resource_group_name = var.rg
  virtual_network_name = var.virtual_network_name
  address_prefixes     = var.address_prefixes

}