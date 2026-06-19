variable "acr_config" {
  type = map(object({
    acr_name            = string
    resource_group_name = string
    location            = string
    sku                 = string
    admin_enabled       = string
    
    georeplications = map(object({
      geo_location            = string
      zone_redundancy_enabled = string
      tags                    = map(string)
    }))
  }))
}
