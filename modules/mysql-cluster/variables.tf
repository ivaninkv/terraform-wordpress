variable "environment" {
  description = "Environment for mysql cluster - PRODUCTION, PRESTABLE"
  type = string
  default = "PRODUCTION"
}

variable "db_version" {
  description = "Version of mysql"
  type = string
  default = "5.7"
}

variable "cluster_name" {
  description = "Name of cluster"
  type = string
  default = "mysql_cluster"
}

variable "db_name" {
  description = "Name of DB"
  type = string
  default = "mysql_db"
}

variable "db_user" {
  description = "DB User"
  type = string
  default = "user"
}

variable "db_pass" {
  description = "DB Password"
  type = string
  default = "password"
}

variable "vpc_network_id" {
  description = "VPC network id"
  type = string
}

variable "subnet_zone_a_id" {
  description = "ID of subnet from zone a"
  type = string
}

variable "subnet_zone_b_id" {
  description = "ID of subnet from zone b"
  type = string
}

variable "disk_type_id" {
  description = "Disk type"
  type = string
  default = "network-ssd"
}

variable "disk_size" {
  description = "Size of disk"
  type = number
  default = 10
}

variable "machine_type" {
  description = "Type of machine"
  type = string
  default = "s2.micro"
}
