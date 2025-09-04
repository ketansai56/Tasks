variable "bucket_name" {
  description = "bucket_name"
  type        = string
}

variable "location" {
  description = "location"
  type        = string
}

variable "storage_class" {
  description = "storage_class"
  type        = string
}

variable "labels" {
  description = "labels"
  type        = map(string)
  default     = {
    environment = "dev"
  }
}

variable "uniform_bucket_level_access" {
  description = "Whether or not to enable uniform bucket-level access."
  type        = bool
}

variable "retention_period" {
  description = "Retention period for the bucket in seconds."
  type        = number
}

variable "retention_lock" {
  description = "Whether the retention policy is locked."
  type        = bool
}


variable "object_name" {
  description = "The name of the object to store inside the bucket."
  type        = string
  default     = "image"
}

variable "object_source" {
  description = "The local path of the file to upload as an object."
  type        = string
}
