module "drone_domain" {
  source    = "./modules/domain"
  domain    = "2martens.de"
  subdomain = "ci"
  ipv4      = "49.12.69.146"
  ipv6      = "2a01:4f8:c012:1fef::1"
}
resource "inwx_nameserver_record" "twomartens_de_ci-ownercheck_txt" {
  domain  = "2martens.de"
  name    = "ownercheck.ci.2martens.de"
  content = "e1eb600b"
  type    = "TXT"
  ttl     = 3600
}