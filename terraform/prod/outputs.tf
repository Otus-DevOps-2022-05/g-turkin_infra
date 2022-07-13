output "external_ip_address_app" {
  value = module.app.all_inst_app_external_IPs
}

output "external_ip_address_db" {
  value = module.db.all_inst_db_external_IPs
}
