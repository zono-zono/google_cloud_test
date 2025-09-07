variable "project_id" {
  description = "The GCP project ID"
  type        = string
  # No default value for security - must be provided via terraform.tfvars or environment variable
}

variable "region" {
  description = "The GCP region"
  type        = string
  default     = "asia-northeast1"
}

variable "dataset_ids" {
  description = "List of BigQuery dataset IDs to create"
  type        = list(string)
  default     = ["src_common", "stg_common", "dwh_common", "dm_common", "src_ga4"]
}
