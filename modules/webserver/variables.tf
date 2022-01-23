variable "subnet_id" {
  description = "Subnet id"
  type = string
}

variable "cores" {
  description = "Number of vCPU"
  type = number
  default = 1
}

variable "memory" {
  description = "RAM in Gb"
  type = number
  default = 2
}

variable "image_id" {
  description = "Image for install"
  type = string
  default = "fd8f30hur3255mjfi3hq"
}

variable "disk_size" {
  description = "Size of disk in Gb"
  type = number
  default = 15
}

variable "ssh_public_key_path" {
  description = "SSH public key path"
  type = string
  default = "~/.ssh/id_rsa.pub"
}

variable "ssh_private_key_path" {
  description = "SSH private key path"
  type = string
  default = "~/.ssh/id_rsa"
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

variable "db_host" {
  description = "DB Host"
  type = string
}
