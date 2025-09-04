resource "google_storage_bucket" "name" {
  name = "bucket-using-terrafrom"
  location = "US"
  storage_class = "STANDARD"
  labels = {
    "dep" = "testing"
  }
  uniform_bucket_level_access = true
  lifecycle_rule {
    condition {
      age = 5
    }
    action {
      type = "SetStorageClass"
      storage_class = "COLDLINE"
    }
  }
  retention_policy {
    is_locked = true
    retention_period = 864000
  }
}

resource "google_storage_bucket_object" "name" {
  name   = "image"
  source = "image.jpeg"
  bucket = google_storage_bucket.name.name
}