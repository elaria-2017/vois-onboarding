module "network" {
    source      = "./network"
    vpc_name    = var.vpc_name
    subnet_cidr = var.subnet_cidr
    subnet_name = var.subnet_name
}
module "instances" {
    source       = "./instances"
    machine_name = var.machine_name
    machine_type = var.machine_type
    os_image     = var.os_image
    zone         = var.zone
    vpc          = module.network.vpc_id
    subnet       = module.network.subnet_id
    email        = google_service_account.sa_gcr.email
}
module "k8s" {
    source               = "./k8s"
    cluster_name         = var.cluster_name
    cluster_region       = var.cluster_region
    cluster_machine_type = var.cluster_machine_type
    no_of_nodes          = var.no_of_nodes
    vpc                  = module.network.vpc_id
    subnet               = module.network.subnet_id
    email                = google_service_account.sa_gcr.email
}
module "buckets" {
    source          = "./buckets"
    storage_class   = var.storage_class
    bucket_location = var.bucket_location
    bucket_name_set = var.bucket_name_set
    }
module "bigquery" {
    source             = "./bigquery"
    bigquery_name_set  = var.bigquery_name_set
    bigquery_vm_access = google_service_account.sa_gcr.email
}
module "serviceacc" {
    source       = "./serviceacc"
    project_id = var.project_id
    account_id_bucket = var.account_id_bucket
    account_id_bigquery = var.account_id_bigquery
    account_id_gcr   = var.account_id_gcr
    roles_bigquery = var.roles_bigquery
    roles_gcr =var.roles_gcr
    roles_bucket = var.roles_bucket
}