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

variable "vpc_network_id" {
  description = "VPC network id"
}

variable "subnet_zone_a_id" {
  description = "ID of subnet from zone a"
}

variable "subnet_zone_b_id" {
  description = "ID of subnet from zone b"
}

variable "disk_type_id" {
  description = "Disk type"
  default = "network-ssd"
}

variable "disk_size" {
  description = "Size of disk"
  default = 10
}

variable "machine_type" {
  description = "Type of machine"
  default = "s2.micro"
}
