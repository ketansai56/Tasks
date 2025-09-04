variable "vm_count" {
  description = "Number of VMs to create"
  type        = number
}
variable "vm_names" {
  description = "List of VM names"
  type        = list(string)
}
variable "zone" {
  description = "Zone"
}
variable "machine_type" {
  description = "machine-type"
}
variable "allow_stopping_for_update" {
  description = "allow_stopping_for_update"
}
variable "network" {
  description = "network"
}
variable "subnetwork" {
  description = "subnetwork"
}
variable "image" {
  description = "image"
}
variable "size" {
  description = "size"
}