resource "google_compute_network" "vpc" {
name = var.vpc_name

auto_create_subnetworks = "false"

}

resource "google_compute_subnetwork" "subnet" {
name = var.subnet_name
ip_cidr_range = var.subnet_cidr 

region = "us-central1"

network = google_compute_network.vpc.name

}

resource "google_compute_firewall" "ssh" {
  name = "allow-ssh"
  network = google_compute_network.vpc.name
  allow {
    protocol = "tcp"
    ports = ["22"]
  }
  #target_tags = ["test"]
  source_ranges = ["0.0.0.0/0"]
}
  resource "google_compute_router" "router" {
  name    = "router"
  network = google_compute_network.vpc.name
  region  = "us-central1"
  
}

/*resource "google_compute_router_nat" "nat" {
  name                               = "nat"
  router                             = google_compute_router.router.name
  region                             = "us-central1"
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"

  subnetwork {
    name                    = google_compute_subnetwork.subnet.name
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }
}*/