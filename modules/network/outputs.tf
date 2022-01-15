output "private_network_id" {
  value = yandex_vpc_network.private_network.id
}

output "subnet_zone_a_id" {
  value = yandex_vpc_subnet.subnet_zone_a.id
}

output "subnet_zone_b_id" {
  value = yandex_vpc_subnet.subnet_zone_b.id
}
