# resource "vault_mount" "user-kv" {
#   path        = "user-kv"
#   type        = "kv-v2"
#   options = {
#     version = "2"
#     type    = "kv-v2"
#   }
#   description = "User main KV store"
# }