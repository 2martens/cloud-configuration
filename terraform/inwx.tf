terraform {
  required_providers {
    inwx = {
      source = "inwx/inwx"
      version = "1.3.2"
    }
  }
}

provider "inwx" {
  api_url = "https://api.domrobot.com/jsonrpc/"
  username = var.inwx_user
  password = var.inwx_password
  # Configuration options
}

locals {
  domain_period = "1Y"
  domain_renewal = "AUTORENEW"
}

resource "inwx_domain_contact" "admin" {
  // contact configuration
  type = "PERSON"
  name = var.admin_name
  street_address = var.admin_street
  city = var.admin_city
  postal_code = var.admin_postal_code
  country_code = var.admin_country_code
  phone_number = var.admin_phone_number
  email = var.admin_email
  whois_protection = true
}

resource "inwx_domain" "twomartens_de" {
  name = "2martens.de"
  nameservers = [
    "ns.inwx.de",
    "ns2.inwx.de",
    "ns3.inwx.eu"
  ]
  period = local.domain_period
  renewal_mode = local.domain_renewal
  transfer_lock = true
  contacts {
    // references to terraform managed contact "example_person"
    registrant = inwx_domain_contact.admin.id
    admin  = inwx_domain_contact.admin.id
    tech  = 1
    billing  = 1
  }
}

resource "inwx_domain" "twomartens_eu" {
  name = "2martens.eu"
  nameservers = [
    "ns.inwx.de",
    "ns2.inwx.de",
    "ns3.inwx.eu"
  ]
  period = local.domain_period
  renewal_mode = local.domain_renewal
  transfer_lock = true
  contacts {
    // references to terraform managed contact "example_person"
    registrant = inwx_domain_contact.admin.id
    admin  = inwx_domain_contact.admin.id
    tech  = 1
    billing  = 1
  }
  extra_data = {
    "EU-COUNTRY-OF-CITIZENSHIP": "DE"
  }
}