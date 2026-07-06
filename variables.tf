variable "nat_gateway_public_ip_associations" {
  description = <<EOT
Map of nat_gateway_public_ip_associations, attributes below
Required:
    - nat_gateway_id
    - public_ip_address_id
EOT

  type = map(object({
    nat_gateway_id       = string
    public_ip_address_id = string
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_nat_gateway_public_ip_association's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: nat_gateway_id
  #   source:    [from natgateways.ValidateNatGatewayID] !ok
  # path: nat_gateway_id
  #   source:    [from natgateways.ValidateNatGatewayID] err != nil
  # path: public_ip_address_id
  #   source:    [from commonids.ValidatePublicIPAddressID] !ok
  # path: public_ip_address_id
  #   source:    [from commonids.ValidatePublicIPAddressID] err != nil
}

