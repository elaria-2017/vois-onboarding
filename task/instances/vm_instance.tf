resource "google_compute_instance" "vm_instance" {
    name         = var.machine_name
    machine_type = var.machine_type
    zone = var.zone
    boot_disk {
    initialize_params {
        image = var.os_image
        }
      }    
    network_interface {       
        network       = var.vpc
        subnetwork    = var.subnet
      }
    service_account {
    email  = var.email
    scopes = ["cloud-platform"]
  }

}