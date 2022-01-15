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
