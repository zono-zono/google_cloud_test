terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.70.0"
    }
  }
}

provider "google" {
  project = "zono-test-471300"
}

resource "google_bigquery_dataset" "dataset" {
  for_each = toset([
    "src_common",
    "stg_common",
    "dwh_common",
    "dm_common"
  ])

  dataset_id                 = each.key
  friendly_name              = each.key
  description                = format("The %s dataset", each.key)
  location                   = "asia-northeast1"
  delete_contents_on_destroy = true
}
