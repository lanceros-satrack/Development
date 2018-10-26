# Create a resource group
resource "azurerm_resource_group" "daviddevops" {
  name     = "${var.resource_group}"
  location = "${var.location}"  
}