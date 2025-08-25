resource "azurerm_resource_group" "RGAKS" {
  name     = "aks-rg"
  location = "West Europe"
}

resource "azurerm_resource_group" "RGAKS2" {
  name     = "aks-rg2"
  location = "West Europe"
}

resource "azurerm_kubernetes_cluster" "myAKSCluster" {
  name                = "example-aks1"
  location            = azurerm_resource_group.RGAKS.location
  resource_group_name = azurerm_resource_group.RGAKS.name
  dns_prefix          = "exampleaks1"

  default_node_pool {
    name       = "default"
    node_count = 2
    vm_size    = "Standard_D2_v2"
  }

  network_profile {
    network_plugin = "azure"
    network_policy = "calico"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Dev"
  }
}

output "client_certificate" {
  value     = azurerm_kubernetes_cluster.myAKSCluster.kube_config[0].client_certificate
  sensitive = true
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.myAKSCluster.kube_config_raw

  sensitive = true
}