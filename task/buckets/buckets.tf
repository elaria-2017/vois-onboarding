resource "google_storage_bucket" "my_bucket_set" {
  project       = "vois-358709"
  for_each      = toset(var.bucket_name_set)
  name          = each.value
  location      = var.bucket_location
  storage_class = var.storage_class
  #force_destroy = true

  #uniform_bucket_level_access = true
}