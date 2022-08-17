resource "google_container_cluster" "cluster" {
  name                     = var.cluster_name
  location                 = "${var.cluster_region}-c"
  remove_default_node_pool = true
  initial_node_count       = 1
  network                  = var.vpc
  subnetwork               = var.subnet
  node_locations = ["${var.cluster_region}-f", ]

  ip_allocation_policy {
   
  }

  private_cluster_config {
    enable_private_nodes    = true
    enable_private_endpoint = true
    master_ipv4_cidr_block  = "192.168.1.0/28"
  }

     master_authorized_networks_config {
       cidr_blocks {
       cidr_block   = "10.0.0.0/24"
         display_name = "our-vpc"
       }
     }
}