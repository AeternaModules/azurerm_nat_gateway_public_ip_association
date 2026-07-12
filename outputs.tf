output "nat_gateway_public_ip_associations_id" {
  description = "Map of id values across all nat_gateway_public_ip_associations, keyed the same as var.nat_gateway_public_ip_associations"
  value       = { for k, v in azurerm_nat_gateway_public_ip_association.nat_gateway_public_ip_associations : k => v.id }
}
output "nat_gateway_public_ip_associations_nat_gateway_id" {
  description = "Map of nat_gateway_id values across all nat_gateway_public_ip_associations, keyed the same as var.nat_gateway_public_ip_associations"
  value       = { for k, v in azurerm_nat_gateway_public_ip_association.nat_gateway_public_ip_associations : k => v.nat_gateway_id }
}
output "nat_gateway_public_ip_associations_public_ip_address_id" {
  description = "Map of public_ip_address_id values across all nat_gateway_public_ip_associations, keyed the same as var.nat_gateway_public_ip_associations"
  value       = { for k, v in azurerm_nat_gateway_public_ip_association.nat_gateway_public_ip_associations : k => v.public_ip_address_id }
}

