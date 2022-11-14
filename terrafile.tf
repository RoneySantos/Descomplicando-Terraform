module "servers" {
    source = "./servers"
    servers = 2
}

output "DNSName" {
  value = module.servers.dns_name
}