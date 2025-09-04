module "Bucket" {
  source = "../modules/bucket"
  bucket_name = "bucket-from-module"
  location    = "ASIA-SOUTH1"
  storage_class = "STANDARD"
  labels = {
  project = "demo"
  }
  uniform_bucket_level_access = true
  retention_period            = 864000
  retention_lock              = true
  object_name   = "my-image"
  object_source = "image.jpeg"
}