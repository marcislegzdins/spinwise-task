module "cluster" {
  source = "./modules/cluster"
}

module "argocd" {
  source = "./modules/argocd"
  depends_on = [module.cluster]
}

module "prometheus" {
  source = "./modules/prometheus"
  repo_url = var.repo_url
  namespace = var.namespace
  depends_on = [module.cluster, module.argocd]
}

module "grafana" {
  source = "./modules/grafana"
  repo_url = var.repo_url
  namespace = var.namespace
  depends_on = [module.cluster, module.argocd]
}