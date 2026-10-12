data "tfe_ssh_key" "ssh_key_lookup" {
  for_each = var.ssh_key_lookup

  name         = each.value.name
  organization = each.value.organization
}

