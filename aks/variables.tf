variable "client_id" 
{
    default = ${ARM_CLIENT_ID}
}

variable "client_secret" 
{
    default = ${ARM_CLIENT_SECRET}
}

variable "agent_count" {
    default = 1
}

variable "ssh_public_key" {
    default = "/.ssh/id_rsa.pub"
}

variable "dns_prefix" {
    default = "akslanceros"
}

variable "enableRBAC" {
    default = true
}

variable cluster_name {
    default = "akslanceros"
}

variable resource_group {
    default = "devops"
}

variable location {
    default = "East US 2"
}

variable "enviroment" {
  description = "Execution enviroment"
  default     = "Production"
}

variable admin_username {
    default = "sshadmin"
}

variable admin_password {
    default = "Satrack2018*"
}

variable agent_vm_size {
    default = "Standard_B2s"
}