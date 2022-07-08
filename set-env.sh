#!/usr/bin/env bash


# add the project id that GCP generated for your project
# example:
# export MY_project_id="g1-01-355707"

export MY_project_id=


export MY_region="europe-west1"

export TF_VAR_project_id=${MY_project_id}
export TF_VAR_region=${MY_region}

export TF_VAR_network_name="my-network-01"
export TF_VAR_subnetwork_name="my-subnetwork"
