variable "ssh_key_lookup" {
  description = <<EOT
Map of ssh_key_lookup, attributes below
Required:
    - name
Optional:
    - organization
EOT

  type = map(object({
    name         = string
    organization = optional(string)
  }))
}

