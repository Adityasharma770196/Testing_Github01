variable "RGS" {

}
variable "Gullak" {

}
variable "VNET" {

}
variable "subnet" {

}
  


resource "azurerm_resource_group" "RG" {
  for_each   = var.RGS
  name       = each.value.name
  location   = each.value.location
  managed_by = each.value.managed_by
}




resource "azurerm_virtual_network" "Glink" {
  for_each            = var.VNET
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  address_space       = each.value.address_space
  location            = each.value.location
  depends_on          = [azurerm_resource_group.RG]
}
resource "azurerm_subnet" "link" {
  for_each             = var.subnet
  name                 = each.value.name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
  depends_on           = [azurerm_virtual_network.Glink]
  address_prefixes     = each.value.address_prefixes
}
