# Azure Terraform Playground

## TL;DR
1. Change 
[`MY_project_id`](./set-env.sh#L5)
in
[`set-env.sh`](./set-env.sh)
and
[`MY_PREFIX`](./set-env.sh#L3)
in
[`set-env.sh`](./20-tf-backend/set-env.sh)
to globally unique names.
2. Run
        ```
        ./10-deploy.sh
        ```

## Overview
This is a compact project that lets you test an GCP setup with terraform.
It essentially consists of a one-button process.
Also
- the terraform state will be stored in a storage account
- all steps are idempotent
- provides a script to clean up
- serves as an ideal starting point for a production project

## Description
The setup consists of three steps:
1. Authentication by running `gcloud auth login`
2. Creation of the backend storage: [20-backend/apply.sh](./20-backend/apply.sh)  
  This step prepares the remote state. It creates a S3 bucket.
3. Application of your IaC: [30-main/apply.sh](./30-main/apply.sh)  

## Objectives
- for a first test no editing of scripts is necessary. Except for unique names for storage account + vault all should run out of the box. This is the main advantage over other, similar publications.
- ready-to-use test environment for arbitrary GCP deployments. Especially for a level of complexity that makes it hard to be created with the portal, only.
- possibility to address issues that appeared in more complex installations. You sometimes want to test things in an isolated environment.

## Disclaimer
Since this is a test project 
- the bucket will be deleted when running the 'tear down' script. Take precautions in a productive environment.
- you are not shown a 'terraform plan', the plan is applied immediately without approval.
