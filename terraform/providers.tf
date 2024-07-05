terraform {
  required_providers {
    kind = {
      source  = "tehcyx/kind"
      version = "~> 0.5.1"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.11"
    }
    helm = {
      source = "hashicorp/helm"
      version = "~> 2.14.0"
    }
  }
}

provider "kind" {}

provider "kubernetes" {
  config_path = "~/.kube/config"
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}