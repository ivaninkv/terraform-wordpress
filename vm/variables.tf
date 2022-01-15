# provider settings
variable "yc_token" {
  description = "Token for yandex cloud"
}

variable "yc_cloud_id" {
  description = "Yandex cloud id"
}

variable "yc_folder_id" {
  description = "Yandex cloud folder id"
}

variable "yc_zone" {
  description = "Yandex cloud zone"
  default = "ru-central1-a"
}

# mysql cluster settings
variable "mysql_environment" {
  description = "Environment for mysql cluster - PRODUCTION, PRESTABLE"
  default     = "PRODUCTION"
}

variable "mysql_db_version" {
  description = "Version of mysql"
  default     = "5.7"
}

variable "mysql_cluster_name" {
  description = "Name of cluster"
  default     = "mysql_cluster"
}

variable "mysql_db_name" {
  description = "Name of DB"
  default     = "mysql_db"
}

variable "mysql_db_user" {
  description = "DB User"
  default     = "user"
}

variable "mysql_db_pass" {
  description = "DB Password"
  default     = "password"
}
