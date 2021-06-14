terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  credentials = file("tf-demo-kr.json")

  project = "tf-demo-kr"
  region  = "europe-west2"
  zone    = "europe-west2-c"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
} 
