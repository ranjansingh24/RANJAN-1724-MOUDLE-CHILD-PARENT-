module "rg" {
  source    = "../../module/Azurerm_Resource_Group"
  rgdetails = var.abc
  location  = "Japan East"

}
module "vnet" {
  source      = "../../module/Azurerm_Virtual_Network"
  vnetdetails = "vnet1"
  location    = "Japan East"
  rg          = "Ranjan-Deepak"
  address     = ["10.18.0.0/16"]
  depends_on  = [module.rg]
}
module "subnet" {
  source               = "../../module/Azurerm_Subnet"
  subnetdetails        = "first-subnet"
  rg                   = "Ranjan-Deepak"
  virtual_network_name = "vnet1"
  address_prefixes     = ["10.18.1.0/24"]
  depends_on           = [module.vnet]
}
