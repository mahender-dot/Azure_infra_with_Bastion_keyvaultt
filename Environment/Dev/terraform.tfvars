rg-details = { 
ajrg = "Brazil South" }

stg-details = {
  sa1 = {
    name                     = "ajstg1"
    resource_group_name      = "ajrg"
    location                 = "Brazil South"
    account_replication_type = "LRS"
  }
}

vnet-details = {
  vnet1 = {
    name                = "ajeet-network"
    location            = "Brazil South"
    resource_group_name = "ajrg"
    address_space       = ["10.0.0.0/16"]
  }


}

subnet-details = {
  subnet1 = {
    name                 = "ajeet-subnet"
    resource_group_name  = "ajrg"
    virtual_network_name = "ajeet-network"
    address_prefixes     = ["10.0.0.0/24"]
    location             = "Brazil South"
    security_name        = "rule1"
    nsg_name             = "nsg1"
  }

  # subnet3 = {
  #   name                 = "Sanidhya-subnet2"
  #   resource_group_name  = "Sanidhya"
  #   virtual_network_name = "Sanidhya-network"
  #   address_prefixes     = ["10.0.2.0/24"]
  #  location="Brazil South"
  #  security_name="rule3"
  #  nsg_name="nsg3"
  # }
  # subnet4 = {
  #   name                 = "Sanidhya-subnet3"
  #   resource_group_name  = "Sanidhya"
  #   virtual_network_name = "Sanidhya-network"
  #   address_prefixes     = ["10.0.3.0/24"]
  #  location="Brazil South"
  #  security_name="rule4"
  #  nsg_name="nsg4"
  # }
}


vm-details = {
  Frontendvm = {
    resource_group_name = "ajrg"
    location            = "Brazil South"
    size                = "Standard_F2"
    sub_name            = "ajeet-subnet"
    virtual_net_name    = "ajeet-network"

  }
  Backendvm = {
    resource_group_name = "ajrg"
    location            = "Brazil South"
    size                = "Standard_F2"
    sub_name            = "ajeet-subnet"
    virtual_net_name    = "ajeet-network"
  }
}

bastion-details = {
  bas1 = {
    pip_name             = "Bation-pip"
    location             = "Brazil South"
    resource_group_name  = "ajrg"
    bas_name             = "ajeet-bastion"
    ip_bas_name          = "ajeet-configuration"
    virtual_network_name = "ajeet-network"
    address_prefixes     = ["10.0.1.0/26"]
  }
}
