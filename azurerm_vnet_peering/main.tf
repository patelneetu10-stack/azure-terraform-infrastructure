data "azurerm_virtual_network" "vnet1" {
  name                = "varun-vnet"
  resource_group_name = "RG1"
}

data "azurerm_virtual_network" "vnet2" {
  name                = "varun-vnet2"
  resource_group_name = "RG2"
}
resource "azurerm_virtual_network_peering" "vnet1_to_vnet2" {
  name                      = "vnet1-to-vnet2"
  resource_group_name       = "RG1"
  virtual_network_name      = "varun-vnet"
  remote_virtual_network_id = data.azurerm_virtual_network.vnet2.id

  allow_virtual_network_access = true
}

resource "azurerm_virtual_network_peering" "vnet2_to_vnet1" {
  name                      = "vnet2-to-vnet1"
  resource_group_name       = "RG2"
  virtual_network_name      = "varun-vnet2"
  remote_virtual_network_id = data.azurerm_virtual_network.vnet1.id

  allow_virtual_network_access = true
}