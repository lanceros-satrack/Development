# Create a resource group
resource "azurerm_resource_group" {
  name     = "${var.resource_group}"
  location = "${var.location}"  
}