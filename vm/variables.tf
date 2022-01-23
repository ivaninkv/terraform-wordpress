# provider settings
variable "yc_token" {
  description = "Token for yandex cloud"
  type = string
}

variable "yc_cloud_id" {
  description = "Yandex cloud id"
  type = string
}

variable "yc_folder_id" {
  description = "Yandex cloud folder id"
  type = string
}

variable "yc_zone" {
  description = "Yandex cloud zone"
  default = "ru-central1-a"
  type = string
}

# mysql cluster settings
variable "mysql_environment" {
  description = "Environment for mysql cluster - PRODUCTION, PRESTABLE"
  default     = "PRODUCTION"
  type = string
}

variable "mysql_db_version" {
  description = "Version of mysql"
  default     = "5.7"
  type = string
}

variable "mysql_cluster_name" {
  description = "Name of cluster"
  default     = "mysql_cluster"
  type = string
}

variable "mysql_db_name" {
  description = "Name of DB"
  default     = "mysql_db"
  type = string
}

variable "mysql_db_user" {
  description = "DB User"
  default     = "user"
  type = string
}

variable "mysql_db_pass" {
  description = "DB Password"
  default     = "password"
  type = string
}

variable "mysql_disk_type_id" {
  description = "Disk type"
  default = "network-ssd"
  type = string
}

variable "mysql_disk_size" {
  description = "Size of disk"
  default = 10
  type = number
}

variable "mysql_machine_type" {
  description = "Type of machine"
  default = "s2.micro"
  type = string
}

# elasticsearch settings
variable "es_cluster_name" {
  description = "Name of cluster"
  default = "es_cluster"
  type = string
}

variable "es_environment" {
  description = "Environment for elasticsearch cluster - PRODUCTION, PRESTABLE"
  default = "PRODUCTION"
  type = string
}

variable "es_admin_password" {
  description = "Admin password"
  type = string
}

variable "es_disk_type_id" {
  description = "Disk type"
  default = "network-ssd"
  type = string
}

variable "es_disk_size" {
  description = "Size of disk"
  default = 20
  type = number
}

variable "es_machine_type" {
  description = "Type of machine"
  default = "s2.micro"
  type = string
}

# webserver
variable "ws_cores" {
  description = "Number of vCPU"
  default = 2
  type = number
}

variable "ws_memory" {
  description = "RAM in Gb"
  default = 2
  type = number
}

variable "ws_image_id" {
  description = "Image for install"
  default = "fd8f30hur3255mjfi3hq"
  type = string
}

variable "ws_disk_size" {
  description = "Size of disk in Gb"
  default = 15
  type = number
}

variable "ws_ssh_public_key_path" {
  description = "SSH public key path"
  default = "~/.ssh/id_rsa.pub"
  type = string
}

variable "ws_ssh_private_key_path" {
  description = "SSH private key path"
  default = "~/.ssh/id_rsa"
  type = string
}
