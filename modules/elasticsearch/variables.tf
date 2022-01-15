variable "cluster_name" {
  description = "Name of cluster"
  default = "es_cluster"
}

variable "environment" {
  description = "Environment for elasticsearch cluster - PRODUCTION, PRESTABLE"
  default = "PRODUCTION"
}

variable "vpc_network_id" {
  description = "VPC network id"
}

variable "admin_password" {
  description = "Admin password"
}

variable "subnet_zone_a_id" {
  description = "ID of subnet from zone a"
}

variable "disk_type_id" {
  description = "Disk type"
  default = "network-ssd"
}

variable "disk_size" {
  description = "Size of disk"
  default = 20
}

variable "machine_type" {
  description = "Type of machine"
  default = "s2.micro"
}
