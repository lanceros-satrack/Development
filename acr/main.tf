resource "azurerm_resource_group" "acr" {
    name     = "${var.resource_group_name}"
    location = "${var.location}"
}

resource "azurerm_storage_account" "acr" {
  name                     = "${var.acrstorage}"
  resource_group_name      = "${azurerm_resource_group.acr.name}"
  location                 = "${azurerm_resource_group.acr.location}"
  account_tier             = "${var.storage_account_tier}"
  account_replication_type = "${var.storage_account_replication_type}"

  tags {
    Environment = "${var.enviroment}"
  }
}

resource "azurerm_container_registry" "acr" {
  name                = "${var.acr_name}"
  resource_group_name = "${azurerm_resource_group.acr.name}"
  location            = "${azurerm_resource_group.acr.location}"
  admin_enabled       = true
  sku                 = "${var.storage_sku}"
  storage_account_id  = "${azurerm_storage_account.acr.id}"

  tags {
    Environment = "${var.enviroment}"
  }
}