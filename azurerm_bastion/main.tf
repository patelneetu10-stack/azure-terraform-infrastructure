 resource "azurerm_public_ip" "ip" {
  for_each = var.ip
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  allocation_method = "Static"
  sku               = "Standard"
}

resource "azurerm_bastion_host" "bastion" {
for_each = var.bastion
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = "/subscriptions/f923775d-985b-4bb3-89ed-1e9f14215242/resourceGroups/mana-rg2/providers/Microsoft.Network/virtualNetworks/varun-vnet2/subnets/AzureBastionSubnet"
    public_ip_address_id = azurerm_public_ip.ip["ip1"].id
  }
}