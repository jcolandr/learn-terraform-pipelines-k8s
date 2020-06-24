terraform {
  backend "remote" {
    organization = "jdc-sandbox"

    workspaces {
      name = "gke-cluster-vault"
    }
  }
}

provider "google" {
  version = "3.10.0"
  project = var.google_project
  region  = var.region
}
