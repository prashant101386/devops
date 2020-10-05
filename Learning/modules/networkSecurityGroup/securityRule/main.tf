resource "azurerm_network_security_rule" "network_security_rule" {
  name                        = var.rule_name
  priority                    = var.rule_priority
  direction                   = var.rule_direction
  access                      = var.rule_access
  protocol                    = var.rule_protocol
  source_port_range           = var.rule_source_port
  destination_port_range      = var.rule_dest_port
  source_address_prefix       = var.rule_source_pref
  destination_address_prefix  = var.rule_dest_pref
  resource_group_name         = var.resource_group_name
  network_security_group_name = var.nsg_name
}
