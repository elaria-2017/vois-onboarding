vpc_name    = "terraform-vpc"
subnet_cidr = "10.0.0.0/24"
subnet_name = "terraform-subnet"
machine_name = "test"
machine_type = "f1-micro"
zone = "us-central1-a"
os_image = "ubuntu-os-cloud/ubuntu-2004-lts"
cluster_name = "cluster"
cluster_region = "us-central1"
cluster_machine_type = "e2-medium"
no_of_nodes = 2
bucket_name_set = [
  "elaria-bucket-001",
  "elaria-bucket-002",
  "elaria-bucket-003",
]
storage_class = "STANDARD"
bucket_location = "us-central1"
bigquery_name_set = [
  "dataset1",
  "dataset2",
  "dataset3",
]
roles_bucket = [
  "roles/storage.objectViewer",
]
project_id = "vois-358709"
account_id_bucket = "bucket-acc"
account_id_bigquery = "bigquery-acc"
roles_bigquery = [
  "roles/bigquery.user",
]
account_id_gcr = "gcr-acc"
roles_gcr = [
  "roles/container.admin",
  "roles/storage.objectViewer",
]