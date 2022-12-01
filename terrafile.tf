module "servers" {
  source = "./servers"
  # servers = 1
  # blocks  = [ {
  #   # device_name = ""
  #   # volume_size = ""
  #   # volume_type = ""
  # } ]

}


output "DNSName" {
  value = module.servers.dns_name
}

# variable "blocks" {
#   type = list(object({
#     device_name = string
#     volume_size = number
#     volume_type = string
#   }))
  
#   description = "List of EBS Block"
# }
