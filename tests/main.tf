module "module-vm" {
  source                      = "../module"
  vm_name                     = "mgmtvmmodule"
  resource_group              = "${azurerm_resource_group.rg.name}"
  subnet_id                   = "${azurerm_subnet.test.id}"
  avset_id                    = "${azurerm_availability_set.avset.id}"
  storage_account             = "${azurerm_storage_account.storage.name}"
  diagnostics_storage_account = "${azurerm_storage_account.storage.name}"
  ssh_key                     = "${var.ssh_key}"
  product                     = "${var.env}"
  env                         = "${var.env}"
  role                        = "${var.role}"
  nsg_id                      = ""
}
