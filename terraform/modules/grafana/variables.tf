variable "repo_url" {
  description = "The URL of the Git repository containing the application manifests"
  type        = string
  default     = "https://github.com/marcislegzdins/spinwise-task.git"
}

variable "namespace" {
  description = "The namespace to deploy Grafana"
  type        = string
  default     = "monitoring"
}