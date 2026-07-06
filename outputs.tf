output "nat_gateway_public_ip_associations" {
  description = "All nat_gateway_public_ip_association resources"
  value       = azurerm_nat_gateway_public_ip_association.nat_gateway_public_ip_associations
}
output "nat_gateway_public_ip_associations_nat_gateway_id" {
  description = "List of nat_gateway_id values across all nat_gateway_public_ip_associations"
  value       = [for k, v in azurerm_nat_gateway_public_ip_association.nat_gateway_public_ip_associations : v.nat_gateway_id]
}
output "nat_gateway_public_ip_associations_public_ip_address_id" {
  description = "List of public_ip_address_id values across all nat_gateway_public_ip_associations"
  value       = [for k, v in azurerm_nat_gateway_public_ip_association.nat_gateway_public_ip_associations : v.public_ip_address_id]
}

