RGS = {
  RG01 = {
    name       = "RG_Aditya"
    location   = "westus"
    managed_by = "AADI"

  }
  RG02 = {
    name       = "RG_Mukesh"
    location   = "centralindia"
    managed_by = "Rohit"
  }

}
Gullak = {
  STG01 = {
    name                     = "stg2002"
    location                 = "westus"
    resource_group_name      = "RG_Aditya"
    account_replication_type = "LRS"
    account_tier             = "Standard"
  }
}
VNET = {
  vnet01 = {
    name                = "linkg"
    location            = "westus"
    address_space       = ["10.0.0.0/16"]
    resource_group_name = "RG_Aditya"
  }
}
subnet = {
  subnet01 = {
    name                 = "link01"
    resource_group_name  = "RG_Aditya"
    virtual_network_name = "linkg"
    address_prefixes = ["10.0.0.0/29"]
  }
}

