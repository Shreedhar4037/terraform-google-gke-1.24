locals {
  mandatory_labels = {
    creator    = var.cluster_resource_labels["creator"]
    app-step   = var.cluster_resource_labels["app-step"]
    customer   = var.cluster_resource_labels["customer"]
    compliance = var.cluster_resource_labels["compliance"]
  }

  custom_mandatory_labels = {
    source_module   = "tfe-google-gke"
    managed_service = "google_gke"
    module_version  = "1_2_4"
  }
}