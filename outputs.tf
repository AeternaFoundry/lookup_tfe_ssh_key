output "ssh_key_lookup_id" {
  description = "Map of id values across all ssh_key_lookup, keyed the same as var.ssh_key_lookup except keys with no id are omitted"
  value       = { for k, v in data.tfe_ssh_key.ssh_key_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ssh_key_lookup_name" {
  description = "Map of name values across all ssh_key_lookup, keyed the same as var.ssh_key_lookup except keys with no name are omitted"
  value       = { for k, v in data.tfe_ssh_key.ssh_key_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "ssh_key_lookup_organization" {
  description = "Map of organization values across all ssh_key_lookup, keyed the same as var.ssh_key_lookup except keys with no organization are omitted"
  value       = { for k, v in data.tfe_ssh_key.ssh_key_lookup : k => v.organization if v.organization != null && length(v.organization) > 0 }
}

