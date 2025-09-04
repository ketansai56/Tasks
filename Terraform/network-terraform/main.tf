resource "google_compute_network" "auto-vpc-network" {
  name = "auto-vpc"
  auto_create_subnetworks = true
}
resource "google_compute_network" "custom-vpc-network" {
  name = "custom-vpc"
  auto_create_subnetworks = false  
}

resource "google_compute_subnetwork" "custom-sub" {
  name = "custom-sub"
  network = google_compute_network.custom-vpc-network.id
  ip_cidr_range = "10.0.0.0/24"
  region = "asia-southeast1"
  private_ip_google_access = true
}

resource "google_compute_firewall" "allow-ingress" {
  name = "allow-ssh"
  network = google_compute_network.custom-vpc-network.name
   allow {
    protocol = "tcp"
    ports = ["22"]
  }
  source_ranges = ["0.0.0.0/0"]
}