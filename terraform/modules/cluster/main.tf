terraform {
  required_providers {
    kind = {
      source  = "tehcyx/kind"
      version = "~> 0.5.1"
    }
  }
}

resource "kind_cluster" "default" {
    name = "spinwise-cluster"
}