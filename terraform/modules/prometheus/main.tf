resource "kubernetes_manifest" "argocd_application_prometheus" {
  manifest = {
    apiVersion = "argoproj.io/v1alpha1"
    kind       = "Application"
    metadata = {
      name      = "prometheus"
      namespace = "argocd"
    }
    spec = {
      project = "default"
      source = {
        repoURL        = var.repo_url
        targetRevision = "HEAD"
        path           = "manifests/argocd-apps/prometheus"
      }
      destination = {
        server    = "https://kubernetes.default.svc"
        namespace = var.namespace
      }
      syncPolicy = {
        automated = {
          prune    = true
          selfHeal = true
        }
        syncOptions = ["CreateNamespace=true"]
      }
    }
  }
}