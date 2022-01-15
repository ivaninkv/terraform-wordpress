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
  network_id  = yandex_vpc_network.mysql_db_network.id
  version     = var.db_version
  database {
    name = var.db_name
  }
  host {
    zone      = "ru-central1-a"
    name      = "db1"
    subnet_id = yandex_vpc_subnet.subnet_zone_a.id
  }
  host {
    zone      = "ru-central1-b"
    name      = "db2"
    subnet_id = yandex_vpc_subnet.subnet_zone_b.id
  }
  resources {
    disk_size          = 10
    disk_type_id       = "network-ssd"
    resource_preset_id = "s2.micro"
  }
  user {
    name     = var.db_user
    password = var.db_pass
  }
}

resource "yandex_vpc_network" "mysql_db_network" {}

resource "yandex_vpc_subnet" "subnet_zone_a" {
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.mysql_db_network.id
  v4_cidr_blocks = ["10.1.0.0/24"]
}

resource "yandex_vpc_subnet" "subnet_zone_b" {
  zone           = "ru-central1-b"
  network_id     = yandex_vpc_network.mysql_db_network.id
  v4_cidr_blocks = ["10.2.0.0/24"]
}
