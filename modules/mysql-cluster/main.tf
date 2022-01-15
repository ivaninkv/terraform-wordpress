terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.69.0"
    }
  }
}

resource "yandex_mdb_mysql_cluster" "mysql_db_cluster" {
  environment = var.environment
  name        = var.cluster_name
  network_id  = var.vpc_network_id
  version     = var.db_version
  database {
    name = var.db_name
  }
  host {
    zone      = "ru-central1-a"
    name      = "db1"
    subnet_id = var.subnet_zone_a_id
  }
  host {
    zone      = "ru-central1-b"
    name      = "db2"
    subnet_id = var.subnet_zone_b_id
  }
  resources {
    disk_size          = var.disk_size
    disk_type_id       = var.disk_type_id
    resource_preset_id = var.machine_type
  }
  user {
    name     = var.db_user
    password = var.db_pass
  }
}
