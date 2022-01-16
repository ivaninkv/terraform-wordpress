variable "subnet_id" {
  description = "Subnet id"
}

variable "cores" {
  description = "Number of vCPU"
  default = 1
}

variable "memory" {
  description = "RAM in Gb"
  default = 2
}

variable "image_id" {
  description = "Image for install"
  default = "fd8f30hur3255mjfi3hq"
}

variable "disk_size" {
  description = "Size of disk in Gb"
  default = 15
}

variable "ssh_public_key_path" {
  description = "SSH public key path"
  default = "~/.ssh/id_rsa.pub"
}

variable "ssh_private_key_path" {
  description = "SSH private key path"
  default = "~/.ssh/id_rsa"
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

variable "db_host" {
  description = "DB Host"
}
