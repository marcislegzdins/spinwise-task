resource "helm_release" "argocd" {
 depends_on = [kind_cluster.default]
 name       = "argocd"
 repository = "https://argoproj.github.io/argo-helm"
 chart      = "argo-cd"
 version    = "7.3.3"
 namespace = "argocd"
 create_namespace = true
}