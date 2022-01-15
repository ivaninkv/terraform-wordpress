terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.69.0"
    }
  }
}

resource "yandex_mdb_elasticsearch_cluster" "es_cluster" {
  name        = var.cluster_name
  environment = var.environment
  network_id  = var.vpc_network_id

  config {
    admin_password = var.admin_password

    data_node {
      resources {
        resource_preset_id = var.machine_type
        disk_type_id       = var.disk_type_id
        disk_size          = var.disk_size
      }
    }
  }

  host {
    name             = "node"
    zone             = "ru-central1-a"
    type             = "DATA_NODE"
    assign_public_ip = true
    subnet_id        = var.subnet_zone_a_id
  }
}
