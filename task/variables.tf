variable vpc_name {
  type        = string
}
variable subnet_cidr {
  type        = string
}
variable subnet_name {
  type        = string
}
variable machine_name {
  type        = string
}
variable machine_type {
  type        = string
}
variable os_image {
  type        = string
}
variable zone {
  type        = string
}
variable cluster_name {
  type        = string
}
variable cluster_region {
  type        = string
}
variable cluster_machine_type {
  type        = string
}
variable no_of_nodes {
  type        = number
}
variable bucket_name_set {
  type        = list(string)
}
variable storage_class {
  type        = string
}
variable bucket_location {
  type        = string
}
variable bigquery_name_set {
  type        = list(string)
}
variable roles_bucket {
  type        = list(string)
}
variable project_id {
  type = string
}
variable account_id_bucket {
  type = string
}
variable account_id_bigquery {
  type = string
}
variable roles_bigquery {
  type        = list(string)
}
variable account_id_gcr {
  type = string
}
variable roles_gcr {
  type        = list(string)
}