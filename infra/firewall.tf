#HTTP - para acessar via browser
resource "google_compute_firewall" "rule-http-angela" {
  project     = var.project
  name        = "rule-http-angela"
  network     = "default"
  
  allow {
    protocol  = "tcp"
    ports     = ["80"]
  }

  allow {
    protocol  = "tcp"
    ports     = ["8080"]
  }

  target_tags = ["http"]
  source_ranges = ["0.0.0.0/0"]
  
}