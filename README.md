# Overview

Example usage:

```
module "module-vm" {
  source = "../module"
  vm_name = "<vm-name>"
  resource_group = "<resource group name>"
  subnet_id                   = "${azurerm_subnet.test.id}" 
  avset_id                    = "${azurerm_availability_set.avset.id}"
  storage_account             = "${azurerm_storage_account.storage.name}"
  diagnostics_storage_account = "${azurerm_storage_account.storage.name}"
  product                     = "${var.env}"
  env                         = "${var.env}"
  role                        = "${var.role}"
}
```


