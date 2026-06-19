module "resource_group" {
  source = "../../root module/RG"
  resource_group = var.resource_group
}

module "aks" {
  source = "../../root module/aks"
  aks_cluster=var.aks_cluster
}
module "acr" {
    source = "../../root module/acr"
    acr_config = var.acr_config
  
}