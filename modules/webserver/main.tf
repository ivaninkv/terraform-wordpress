terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.69.0"
    }
  }
}

resource "yandex_compute_instance" "webserver" {
  name     = "webserver"
  zone     = "ru-central1-a"
  boot_disk {
    initialize_params {
      image_id = var.image_id
      size     = var.disk_size
    }
  }
  network_interface {
    subnet_id = var.subnet_id
    nat       = true
  }
  resources {
    cores         = var.cores
    memory        = var.memory
    core_fraction = 20
  }
  metadata = {
    ssh-keys = "ubuntu:${file(var.ssh_public_key_path)}"
  }

  connection {
    type        = "ssh"
    host        = self.network_interface[0].nat_ip_address
    user        = "ubuntu"
    private_key = file(var.ssh_private_key_path)
  }
  provisioner "remote-exec" {
    script = "${path.module}/files/startup.sh"
  }
  provisioner "file" {
    source      = "${path.module}/files/site.conf"
    destination = "/tmp/site.conf"
  }
  provisioner "file" {
    source      = "${path.module}/files/playbook.yml"
    destination = "/tmp/playbook.yml"
  }
  provisioner "remote-exec" {
    inline = [
      "sed -i 's/{{dbname}}/${var.db_name}/g' /tmp/playbook.yml",
      "sed -i 's/{{dbuser}}/${var.db_user}/g' /tmp/playbook.yml",
      "sed -i 's/{{dbpass}}/${var.db_pass}/g' /tmp/playbook.yml",
      "sed -i 's/{{dbhost}}/${var.db_host}/g' /tmp/playbook.yml",
      "sed -i 's/{{url}}/${self.network_interface[0].nat_ip_address}/g' /tmp/playbook.yml"
    ]
  }
  provisioner "remote-exec" {
    script = "${path.module}/files/wordpress.sh"
  }
}
