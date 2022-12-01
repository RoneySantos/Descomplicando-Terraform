module "servers" {
    source = "./servers"
    # servers = 1
}

output "DNSName" {
  value = module.servers.dns_name
}