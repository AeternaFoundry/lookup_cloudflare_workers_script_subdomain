variable "workers_script_subdomain_lookup" {
  description = <<EOT
Map of workers_script_subdomain_lookup, attributes below
Required:
    - account_id
    - script_name
EOT

  type = map(object({
    account_id  = string
    script_name = string
  }))
}

