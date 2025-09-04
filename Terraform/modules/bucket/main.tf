resource "google_storage_bucket" "name" {
  name                        = var.bucket_name
  location                    = var.location
  storage_class               = var.storage_class
  labels                      = var.labels
  uniform_bucket_level_access = var.uniform_bucket_level_access

  lifecycle_rule {
    condition {
      age = 5
    }
    action {
      type          = "SetStorageClass"
      storage_class = "COLDLINE"
    }
  }

  retention_policy {
    is_locked        = var.retention_lock
    retention_period = var.retention_period
  }
}

resource "google_storage_bucket_object" "name" {
  name   = var.object_name
  source = var.object_source
  bucket = google_storage_bucket.name.name
}
