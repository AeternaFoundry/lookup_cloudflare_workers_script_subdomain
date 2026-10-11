output "workers_script_subdomain_lookup_account_id" {
  description = "Map of account_id values across all workers_script_subdomain_lookup, keyed the same as var.workers_script_subdomain_lookup except keys with no account_id are omitted"
  value       = { for k, v in data.cloudflare_workers_script_subdomain.workers_script_subdomain_lookup : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "workers_script_subdomain_lookup_enabled" {
  description = "Map of enabled values across all workers_script_subdomain_lookup, keyed the same as var.workers_script_subdomain_lookup except keys with no enabled are omitted"
  value       = { for k, v in data.cloudflare_workers_script_subdomain.workers_script_subdomain_lookup : k => v.enabled if v.enabled != null }
}
output "workers_script_subdomain_lookup_previews_enabled" {
  description = "Map of previews_enabled values across all workers_script_subdomain_lookup, keyed the same as var.workers_script_subdomain_lookup except keys with no previews_enabled are omitted"
  value       = { for k, v in data.cloudflare_workers_script_subdomain.workers_script_subdomain_lookup : k => v.previews_enabled if v.previews_enabled != null }
}
output "workers_script_subdomain_lookup_script_name" {
  description = "Map of script_name values across all workers_script_subdomain_lookup, keyed the same as var.workers_script_subdomain_lookup except keys with no script_name are omitted"
  value       = { for k, v in data.cloudflare_workers_script_subdomain.workers_script_subdomain_lookup : k => v.script_name if v.script_name != null && length(v.script_name) > 0 }
}

