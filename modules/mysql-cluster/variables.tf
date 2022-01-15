variable "environment" {
  description = "Environment for mysql cluster - PRODUCTION, PRESTABLE"
  default = "PRODUCTION"
}

variable "db_version" {
  description = "Version of mysql"
  default = "5.7"
}

variable "cluster_name" {
  description = "Name of cluster"
  default = "mysql_cluster"
}

variable "db_name" {
  description = "Name of DB"
  default = "mysql_db"
}

variable "db_user" {
  description = "DB User"
  default = "user"
}

variable "db_pass" {
  description = "DB Password"
  default = "password"
}