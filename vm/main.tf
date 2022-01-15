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

module "mysql-cluster" {
  source       = "../modules/mysql-cluster"
  environment  = var.mysql_environment
  db_version   = var.mysql_db_version
  cluster_name = var.mysql_cluster_name
  db_name      = var.mysql_db_name
  db_user      = var.mysql_db_user
  db_pass      = var.mysql_db_pass
}