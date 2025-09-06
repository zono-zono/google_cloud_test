# Google Cloud BigQuery Datasets with Terraform

This repository contains Terraform configuration to create BigQuery datasets in Google Cloud Platform.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- [Google Cloud CLI](https://cloud.google.com/sdk/docs/install) installed and authenticated
- Access to a GCP project

## Setup

1. Clone this repository:
   ```bash
   git clone https://github.com/zono-zono/google_cloud_test.git
   cd google_cloud_test
   ```

2. Copy the example variables file and customize it:
   ```bash
   cp terraform.tfvars.example terraform.tfvars
   ```

3. Edit `terraform.tfvars` with your project details:
   ```hcl
   project_id = "your-project-id"
   region     = "asia-northeast1"
   
   dataset_ids = [
     "src_common",
     "stg_common", 
     "dwh_common",
     "dm_common"
   ]
   ```

4. Initialize Terraform:
   ```bash
   terraform init
   ```

5. Plan the deployment:
   ```bash
   terraform plan
   ```

6. Apply the configuration:
   ```bash
   terraform apply
   ```

## Variables

| Name | Description | Type | Default |
|------|-------------|------|---------|
| project_id | The GCP project ID | string | "zono-test-471300" |
| region | The GCP region | string | "asia-northeast1" |
| dataset_ids | List of BigQuery dataset IDs to create | list(string) | ["src_common", "stg_common", "dwh_common", "dm_common"] |

## Resources

This configuration creates:
- 4 BigQuery datasets (src_common, stg_common, dwh_common, dm_common)
- All datasets are created in the specified region
- Datasets are configured to delete contents on destroy

## Security Note

Never commit `terraform.tfvars` files to version control as they may contain sensitive information.
