variable "servers" {
  default = "staging"
}

variable "plus" {
  default = 2
}

variable "enviroment" {
  type = string
  default = "staging"
  description = "The enviroment instance"    
}

# variable "sg" {
#   type = list(number)
#   default = [ 1,2,3 ]
#   description = "The list of SG for this instance"
# }

variable "instance_type" {
    type = list(string)
    # default = [ "t2.micro", "t3.medium" ] # duas instancias
    default = [ "t2.micro" ]
    description = "the list of the instance type"
  
}

# variable "blocks" {
#   type = list(object({
#     device_name = string
#     volume_size = number
#     volume_type = string
#   }))
  
#   description = "List of EBS Block"
# }