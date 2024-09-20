terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.34.0"
    }
  }
  backend "gcs" {
    bucket = "terraform_angela_mb"
    prefix = "terraform/state"
  }
}

provider "google-beta" {
  project = var.project
  region = var.region
}

