module "release_tag" {
  source = "../oidc"

  identity_name       = "dev-oidc-identity"
  repository_name     = "eltelemaco/terraform-oidc"
  entity_type         = "ref"
  ref_tags            = ["v1.0"]  
}

output "service_principal" {
  value = module.release_tag.service_principal
  description = "Azure Service Principal."  
  
}