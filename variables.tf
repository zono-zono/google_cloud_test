variable "project_id" {
  description = "The GCP project ID"
  type        = string
  default     = "zono-test-471300"
}

variable "region" {
  description = "The GCP region"
  type        = string
  default     = "asia-northeast1"
}

variable "dataset_ids" {
  description = "List of BigQuery dataset IDs to create"
  type        = list(string)
  default     = ["src_common", "stg_common", "dwh_common", "dm_common"]
}
