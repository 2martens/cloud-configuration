terraform {
  cloud {
    organization = "2martens"

    workspaces {
      name = "cloud-configuration"
    }
  }
}