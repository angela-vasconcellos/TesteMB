
variable "project" {
  default = "entrevista-angela"
}


variable "region" {
  default       = "us-central1"
  description   = "Region"
  type          = string
}

variable "zone" {
  default       = "us-central1-a"
  description   = "zone"
  type          = string
}


variable "machine_type" {
  default = "e2-micro"
}


variable "cluster_name" {
  description = "The name of the Kubernetes cluster"
  type        = string
  default     = "gke-angela"
}

variable "initial_node_count" {
  description = "The initial number of nodes in the cluster"
  type        = number
  default     = 1
}

