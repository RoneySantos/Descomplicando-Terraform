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