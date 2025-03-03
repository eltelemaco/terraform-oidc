module "pull_request" {
    source = "./Modules/oidc"

    identity_name = "dev-oidc-identity"
    repository_name = "eltelemaco/terraform-oidc"
    entity_type = "pull_request"     
}

output "azuread_service_principal" {
    description = "Azure Service Principal"
    value = module.pull_request.service_principal  
}