module "development_branch" {
    source = "../Modules/oidc"

    identity_name = "dev-oidc-identity-02"
    repository_name = "eltelemaco/terraform-oidc"
    entity_type = "ref"
    ref_branches = ["main"]     
}

output "service_principal" {
    description = "Azure Service Principal"
    value = module.development_branch.service_principal
}