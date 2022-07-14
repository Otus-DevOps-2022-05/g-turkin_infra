output "all_inst_app_external_IPs" {
  value = yandex_compute_instance.app[*].network_interface.0.nat_ip_address
}
