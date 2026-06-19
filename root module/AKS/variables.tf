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
