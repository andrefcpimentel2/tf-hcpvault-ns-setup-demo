# # Create an admins policy in the admin/dev_kv namespace
# resource "vault_policy" "admin_policy_education" {
#   for_each = vault_namespace.divisions
  
#   name   = "admins"
#   policy = file("policies/admin-policy.hcl")
# }