resource "azurerm_resource_group" "k8s" {
    name     = "${var.resource_group}"
    location = "${var.location}"
}

resource "azurerm_kubernetes_cluster" "k8s" { 
    name                = "${var.cluster_name}"
    location            = "${azurerm_resource_group.k8s.location}"
    resource_group_name = "${azurerm_resource_group.k8s.name}"
    dns_prefix          = "${var.dns_prefix}"
    enableRBAC          = "${var.enableRBAC}"
    
    linux_profile {
        admin_username = "${var.admin_username}"
        admin_password = "${var.admin_password}"

        disable_password_authentication = false

        #ssh_key {
        #key_data = "${file("${var.ssh_public_key}")}"
        #}
    }

    agent_pool_profile {
        name            = "default"
        count           = "${var.agent_count}"
        vm_size         = "${var.agent_vm_size}"
        os_type         = "Linux"
        os_disk_size_gb = 32
    }

    // service_principal {
    //     client_id     = "${var.client_id}"
    //     client_secret = "${var.client_secret}"
    // }

    tags {
        Environment = "${var.enviroment}"
    }
}