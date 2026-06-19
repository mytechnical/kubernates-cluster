resource_group = {
  rg1 = {
    resource_group_name = "rg-aks"
    location            = "west europe"

  }
}

aks_cluster = {
  aks1 = {
    aks_cluster_name    = "dev-aks"
    location            = "west europe"
    resource_group_name = "rg-aks"
    dns_prefix          = "devaks"

    default_node_pool = {
      default1 = {
        node_name  = "default"
        node_count = 2
        vm_size    = "Standard_D2_v2"
      }
    }
    identity = {
      system1 = {
        type = "SystemAssigned"
      }
    }

    tags = {
      Environment = "Dev"
    }
  }
}

acr_config = {
  acr1 = {
    acr_name            = "devacr01"
    resource_group_name = "rg-aks"
    location            = "west europe"
    sku                 = "Premium"
    admin_enabled       = false
    georeplications = {
      geo1 = {
        geo_location            = "East US"
        zone_redundancy_enabled = true
        tags = {
          Environment = "Dev"
        }
      }
    }
  }
}
