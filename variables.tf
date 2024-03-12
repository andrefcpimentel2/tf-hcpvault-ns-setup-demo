variable "namespaces" {
    description = "Maps of Namespaces"
    default = {
        "DEV" = {
            "DIV1" = {
                "child_namespaces" = ["external1", "external2", "external3"]
            }
            "DIV2" = {
                "child_namespaces" = ["external1", "external2", "external3"]
            }
            "DIV3" = {
                "child_namespaces" = ["external1", "external2", "external3"]
            }
            "DIV4" = {
                "child_namespaces" = ["external1", "external2", "external3"]
            }
        },
        "PROD" = {
            "DIV1" = {
                "child_namespaces" = ["external1", "external2", "external3"]
            }
            "DIV2" = {
                "child_namespaces" = ["external1", "external2", "external3"]
            }
            "DIV3" = {
                "child_namespaces" = ["external1", "external2", "external3"]
            }
            "DIV4" = {
                "child_namespaces" = ["external1", "external2", "external3"]
            }
        }
    }
}