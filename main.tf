terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.70.0"
    }
  }
}

provider "google" {
  project = var.project_id
}

resource "google_bigquery_dataset" "dataset" {
  for_each = toset(var.dataset_ids)

  dataset_id                 = each.key
  friendly_name              = each.key
  description                = format("The %s dataset", each.key)
  location                   = var.region
  delete_contents_on_destroy = true
}
