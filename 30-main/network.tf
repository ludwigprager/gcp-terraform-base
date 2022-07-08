# https://github.com/terraform-google-modules/terraform-google-network
# https://github.com/terraform-google-modules/terraform-google-kubernetes-engine/blob/master/examples/safer_cluster_iap_bastion/network.tf

module "vpc" {
  source  = "terraform-google-modules/network/google"
  version = "3.5.0"

  network_name = var.network_name
  project_id   = var.project_id

#   routing_mode = "GLOBAL"

  subnets = [
    {
      subnet_name           = var.subnetwork_name
      subnet_ip             = var.cidr
      subnet_region         = var.region
      subnet_private_access = true
      description           = "This subnet is managed by Terraform"
    }
  ]

  secondary_ranges = {
    (var.subnetwork_name) = [
      {
                range_name    = "my-pods-tf"
                ip_cidr_range = "10.11.0.0/16"
      },
      {
                range_name    = "my-services-tf"
                ip_cidr_range = "10.12.0.0/16"
      },
    ]
  }

}
