path "user-kv/{{identity.entity.name}}/*" {
    capabilities = [ "create", "update", "read", "delete", "list" ]
}

# For Web UI usage
path "user-kv/metadata" {
  capabilities = ["list"]
}