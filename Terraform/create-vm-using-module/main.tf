module "VM" {
  source = "../modules/compute-engine"
  count  = var.vm_count
  vm_name                   = var.vm_names[count.index]
  zone                      = var.zone
  machine_type              = var.machine_type
  allow_stopping_for_update = var.allow_stopping_for_update
  network                   = var.network
  subnetwork                = var.subnetwork
  image                     = var.image
  size                      = var.size
}
