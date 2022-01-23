variable "cluster_name" {
  description = "Name of cluster"
  type = string
  default = "es_cluster"
}

variable "environment" {
  description = "Environment for elasticsearch cluster - PRODUCTION, PRESTABLE"
  type = string
  default = "PRODUCTION"
}

variable "vpc_network_id" {
  description = "VPC network id"
  type = string
}

variable "admin_password" {
  description = "Admin password"
  type = string
}

variable "subnet_zone_a_id" {
  description = "ID of subnet from zone a"
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
  default = 20
}

variable "machine_type" {
  description = "Type of machine"
  type = string
  default = "s2.micro"
}
