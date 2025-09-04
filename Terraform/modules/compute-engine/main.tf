resource "google_compute_instance" "name" {
  name = var.vm_name
  zone = var.zone
  machine_type = var.machine_type
  allow_stopping_for_update = var.allow_stopping_for_update
  network_interface {
    # network = "default"
    network = var.network
    subnetwork = var.subnetwork
    access_config {}
  }
  boot_disk {
    initialize_params {
      image = var.image
      size = var.size
    }
  }
}

