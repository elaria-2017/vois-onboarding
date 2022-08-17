
resource "google_service_account" "sa_query" {
  project      = var.project_id
  account_id  = var.account_id_bigquery

}

resource "google_project_iam_member" "sa_query_iam" {
  for_each = toset(var.roles_bigquery)

  project = var.project_id
  role    = each.value
  member  = "serviceAccount:${google_service_account.sa_query.email}"
}




resource "google_service_account" "sa_bucket" {
  project      = var.project_id
  account_id   = var.account_id_bucket

}

resource "google_project_iam_member" "sa_bucket_iam" {
  for_each = toset(var.roles_bucket)

  project = var.project_id
  role    = each.value
  member  = "serviceAccount:${google_service_account.sa_bucket.email}"
}


resource "google_service_account" "sa_gcr" {
  project      = var.project_id
  account_id   = var.account_id_gcr

}

resource "google_project_iam_member" "sa_gcr_iam" {
  for_each = toset(var.roles_gcr)

  project = var.project_id
  role    = each.value
  member  = "serviceAccount:${google_service_account.sa_gcr.email}"
}