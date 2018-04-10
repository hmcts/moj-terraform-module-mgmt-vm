# Main VM storage account
resource "azurerm_storage_account" "storage" {
  name = "${var.name}storage"

  resource_group_name = "${azurerm_resource_group.rg.name}"

  location                 = "${var.location}"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags {
    env     = "${var.env}"
    product = "${var.product}"
  }
}
