resource "google_bigquery_dataset" "dataset" {
  for_each                    = toset(var.bigquery_name_set)
  dataset_id                  = each.value
  location                    = "US"
  default_table_expiration_ms = 3600000


    access {
    role          = "roles/bigquery.user"
    user_by_email = var.bigquery_vm_access
  }
  }  
