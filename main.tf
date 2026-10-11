data "cloudflare_workers_script_subdomain" "workers_script_subdomain_lookup" {
  for_each = var.workers_script_subdomain_lookup

  account_id  = each.value.account_id
  script_name = each.value.script_name
}

