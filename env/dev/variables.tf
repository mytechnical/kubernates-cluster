variable "resource_group" {
  type = map(object({
    resource_group_name = string
    location            = string
  }))
}

variable "aks_cluster" {
  type = map(object({
    aks_cluster_name    = string
    location            = string
    resource_group_name = string
    dns_prefix          = string

    default_node_pool = map(object({
      node_name  = string
      node_count = number
      vm_size    = string
    }))

    identity = map(object({
      type = string
    }))

    tags = map(string)
  }))
}

variable "acr_config" {
  description = "ACR configuration with optional and required fields"

  type = map(object({
    acr_name            = string
    resource_group_name = string
    location            = string
    sku                 = string
    admin_enabled       = optional(bool, false)
    georeplications = optional(
      map(object({
        geo_location            = string
        zone_redundancy_enabled = optional(bool, false)
        tags                    = optional(map(string), {})
      })),
      {}
    )
  }))
}
