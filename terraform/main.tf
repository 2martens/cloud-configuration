terraform {
  cloud {
    organization = "2martens"

    workspaces {
      name = "cloud-configuration"
    }
  }
  required_providers {
    inwx = {
      source  = "inwx/inwx"
      version = "1.3.2"
    }
  }
}