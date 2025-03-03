module "development_env" {
    source = "../Modules/oidc"

    identity_name = "dev-oidc-identity-01"
    repository_name = "eltelemaco/terraform-oidc"
    entity_type = "environment"
    environment_names = ["development"]     
}

output "service_principal" {
    description = "Azure Service Principal"
    value = module.development_env.service_principal
}