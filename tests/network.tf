resource "azurerm_virtual_network" "test" {
  name                = "${var.name}-vnet"
  address_space       = ["10.14.0.0/16"]
  location            = "${azurerm_resource_group.rg.location}"
  resource_group_name = "${azurerm_resource_group.rg.name}"

  tags {
    environment = "sandbox"
  }
}

resource "azurerm_subnet" "test" {
  name                 = "${var.name}-subnet"
  resource_group_name  = "${azurerm_resource_group.rg.name}"
  virtual_network_name = "${azurerm_virtual_network.test.name}"
  address_prefix       = "10.14.1.0/24"
}
