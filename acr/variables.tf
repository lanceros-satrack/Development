variable "resource_group" {
  description = "The name of the resource group in which to create the Data Lake"
  default     = "devops"
}

variable "location" {
  description = "The location/region where the Data Lake is created. Changing this forces a new resource to be created."
  default     = "East US 2"
}

variable "enviroment" {
  description = "Execution enviroment"
  default     = "Production"
}

variable "storage_sku" {
  default     = "Classic"
}

variable "storage_account_name" {
  default     = "acrstolanceros"
}

variable "acr_name" {
  default     = "acrlanceros"
}

variable "storage_account_tier" {
  default     = "Standard"
}

variable "storage_account_replication_type" {
  default     = "LRS"
}