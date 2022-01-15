terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.69.0"
    }
  }
}

resource "yandex_vpc_network" "private_network" {}

resource "yandex_vpc_subnet" "subnet_zone_a" {
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.private_network.id
  v4_cidr_blocks = ["10.1.0.0/24"]
}

resource "yandex_vpc_subnet" "subnet_zone_b" {
  zone           = "ru-central1-b"
  network_id     = yandex_vpc_network.private_network.id
  v4_cidr_blocks = ["10.2.0.0/24"]
}
