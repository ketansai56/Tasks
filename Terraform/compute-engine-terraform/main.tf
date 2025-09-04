resource "google_compute_instance" "name" {
  name = "vm-from-tf"
  zone = "asia-southeast1-c"
  machine_type = "e2-micro"
  allow_stopping_for_update = true
  network_interface {
    # network = "default"
    network = "custom-vpc"
    subnetwork = "custom-sub"
    access_config {}
  }
  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
      size = 10
    }
  }
  lifecycle {
    ignore_changes = [ attached_disk ]
  }
}

resource "google_compute_disk" "disk" {
  name = "disk-1"
  size = 10 
  zone = "asia-southeast1-c"
  type = "pd-ssd"
}

resource "google_compute_attached_disk" "addDisk" {
 disk = google_compute_disk.disk.id
 instance = google_compute_instance.name.id
}