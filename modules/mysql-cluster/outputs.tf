output "master_host_name" {
  value = yandex_mdb_mysql_cluster.mysql_db_cluster.host[0].fqdn
}
