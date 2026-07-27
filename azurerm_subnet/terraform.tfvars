subnets = {
  subnet1 = {
    name                 = "forntend-subnet"
    resource_group_name  = "mana-rg"
    virtual_network_name = "varun-vnet"
    address_prefixes     = ["10.0.0.0/24"]
  }
  subnet2 = {
    name                 = "backend-subnet"
    resource_group_name  = "mana-rg"
    virtual_network_name = "varun-vnet"
    address_prefixes     = ["10.0.1.0/24"]

  }
  subnet3 = {
    name                 = "database-subnet"
    resource_group_name  = "mana-rg"
    virtual_network_name = "varun-vnet"
    address_prefixes     = ["10.0.2.0/24"]
  }
  subnet4 = {
    name                 = "forntend-subnet1"
    resource_group_name  = "mana-rg2"
    virtual_network_name = "varun-vnet2"
    address_prefixes     = ["10.1.1.0/24"]
  }
  subnet5 = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "mana-rg2"
    virtual_network_name = "varun-vnet2"
    address_prefixes     = ["10.1.2.0/24"]
  }
  subnet6 = {
    name                 = "database-subnet2"
    resource_group_name  = "mana-rg2"
    virtual_network_name = "varun-vnet2"
    address_prefixes     = ["10.1.3.0/24"]
  }
    subnet7 = {
    name                 = "database-subnet3"
    resource_group_name  = "mana-rg2"
    virtual_network_name = "varun-vnet2"
    address_prefixes     = ["10.1.4.0/24"]
  }
}

       