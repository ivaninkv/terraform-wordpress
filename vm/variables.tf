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

variable "mysql_disk_type_id" {
  description = "Disk type"
  default = "network-ssd"
}

variable "mysql_disk_size" {
  description = "Size of disk"
  default = 10
}

variable "mysql_machine_type" {
  description = "Type of machine"
  default = "s2.micro"
}

# elasticsearch settings
variable "es_cluster_name" {
  description = "Name of cluster"
  default = "es_cluster"
}

variable "es_environment" {
  description = "Environment for elasticsearch cluster - PRODUCTION, PRESTABLE"
  default = "PRODUCTION"
}

variable "es_admin_password" {
  description = "Admin password"
}

variable "es_disk_type_id" {
  description = "Disk type"
  default = "network-ssd"
}

variable "es_disk_size" {
  description = "Size of disk"
  default = 20
}

variable "es_machine_type" {
  description = "Type of machine"
  default = "s2.micro"
}

# webserver
variable "ws_cores" {
  description = "Number of vCPU"
  default = 2
}

variable "ws_memory" {
  description = "RAM in Gb"
  default = 2
}

variable "ws_image_id" {
  description = "Image for install"
  default = "fd8f30hur3255mjfi3hq"
}

variable "ws_disk_size" {
  description = "Size of disk in Gb"
  default = 15
}

variable "ws_ssh_public_key_path" {
  description = "SSH public key path"
  default = "~/.ssh/id_rsa.pub"
}

variable "ws_ssh_private_key_path" {
  description = "SSH private key path"
  default = "~/.ssh/id_rsa"
}
