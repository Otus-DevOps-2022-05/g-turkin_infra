output "all_inst_db_external_IPs" {
  value = yandex_compute_instance.db[*].network_interface.0.nat_ip_address
}
