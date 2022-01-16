terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.69.0"
    }
  }
}

provider "yandex" {
  token     = var.yc_token
  cloud_id  = var.yc_cloud_id
  folder_id = var.yc_folder_id
  zone      = var.yc_zone
}

module "network" {
  source = "../modules/network"
}

module "mysql-cluster" {
  source           = "../modules/mysql-cluster"
  environment      = var.mysql_environment
  db_version       = var.mysql_db_version
  cluster_name     = var.mysql_cluster_name
  db_name          = var.mysql_db_name
  db_user          = var.mysql_db_user
  db_pass          = var.mysql_db_pass
  vpc_network_id   = module.network.private_network_id
  subnet_zone_a_id = module.network.subnet_zone_a_id
  subnet_zone_b_id = module.network.subnet_zone_b_id
}

module "elasticsearch" {
  source           = "../modules/elasticsearch"
  cluster_name     = var.es_cluster_name
  environment      = var.es_environment
  disk_size        = var.es_disk_size
  disk_type_id     = var.es_disk_type_id
  machine_type     = var.es_machine_type
  admin_password   = var.es_admin_password
  vpc_network_id   = module.network.private_network_id
  subnet_zone_a_id = module.network.subnet_zone_a_id
}

module "webserver" {
  source               = "../modules/webserver"
  cores                = var.ws_cores
  memory               = var.ws_memory
  image_id             = var.ws_image_id
  disk_size            = var.ws_disk_size
  ssh_public_key_path  = var.ws_ssh_public_key_path
  ssh_private_key_path = var.ws_ssh_private_key_path
  db_name              = var.mysql_db_name
  db_user              = var.mysql_db_user
  db_pass              = var.mysql_db_pass
  subnet_id            = module.network.subnet_zone_a_id
  db_host              = module.mysql-cluster.master_host_name
}
