
# https://github.com/terraform-google-modules/terraform-google-kubernetes-engine/blob/master/examples/safer_cluster_iap_bastion/apis.tf


module "enabled_google_apis" {
  source  = "terraform-google-modules/project-factory/google//modules/project_services"
  version = "~> 10.0"

  project_id                  = var.project_id
  disable_services_on_destroy = false

  activate_apis = [
    "compute.googleapis.com",
  ]
}
