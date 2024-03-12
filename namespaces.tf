
#Flatten the namespace list 
locals {

  divisions = distinct(flatten([for environment, environment_data in var.namespaces : 
  [for division, division_data in environment_data : {
    path = division
    namespace = environment
    }
    ]]))

  child_namespaces = flatten([for environment, environment_data in var.namespaces : 
  [for division, division_data in environment_data : 
      [for child_namespace in division_data.child_namespaces : {
       path = child_namespace
       namespace = "${environment}/${division}"
      }]]])
}
resource "vault_namespace" "environments" {
  for_each  = var.namespaces
  path = each.key
}
resource "vault_namespace" "divisions" {
  depends_on = [ vault_namespace.environments ]
  for_each = {for key, value in local.divisions : key => value}
  path = each.value["path"]
  namespace = each.value["namespace"]
}

resource "vault_namespace" "child_namespaces" {
  depends_on = [ vault_namespace.divisions ]
  for_each  = {for key, value in local.child_namespaces : key => value}
  path = each.value["path"]
  namespace = each.value["namespace"]
}