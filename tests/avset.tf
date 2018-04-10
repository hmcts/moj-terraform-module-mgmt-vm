# Availability Set
resource "azurerm_availability_set" "avset" {
  name     = "${var.name}-avset"
  location = "${var.location}"

  resource_group_name = "${azurerm_resource_group.rg.name}"

  tags {
    env     = "${var.env}"
    product = "${var.product}"
  }
}
