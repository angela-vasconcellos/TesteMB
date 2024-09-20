resource "google_container_cluster" "gke-angela" {
  name     = var.cluster_name
  location = var.region
  project  = var.project

  initial_node_count = var.initial_node_count

  node_config {
    machine_type = var.machine_type

    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }

  lifecycle {
    prevent_destroy = true
  }
}


resource "google_container_node_pool" "node-pool-general-angela" {
  name       = "node-pool-general-angela"
  cluster    = google_container_cluster.gke-angela.id
  project    = var.project
  node_count = 1

  management {
    auto_repair  = true
    auto_upgrade = true
  }

  autoscaling {
    min_node_count = 1
    max_node_count = 3
  }

  node_config {
    preemptible  = true
    machine_type = "e2-micro"
    tags = ["angela"]
    labels = {
      role = "node-pool-general-angela"
    }

  }
}