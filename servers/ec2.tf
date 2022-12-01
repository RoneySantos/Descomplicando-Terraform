data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Ubuntu
}

# data "aws_ami" "ubuntu-west-2" {
#   provider = aws.west-2
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
#   }

#   owners = ["099720109477"] # Ubuntu
# }

resource "aws_instance" "web" {
  # count         = var.servers == "production" ? 2 : 1 #Remove to test for_each
  ami           = data.aws_ami.ubuntu.id
  # instance_type = count.index < 1 ? "t2.micro" : "t3.medium"
  # vpc_security_group_ids = var.sg
  # for_each = {
  #   dev = "t2.micro"
  #   staging = "t3.medium"
  # } TEST 1 FOR_EACH
  for_each = toset(var.instance_type)
  instance_type = each.value

  tags = {
    Name = "HelloWorld"
    Env = var.enviroment
  }
}

# resource "aws_instance" "web_west_2" {
#   provider = aws.west-2
#   ami           = data.aws_ami.ubuntu-west-2.id
#   instance_type = "t2.micro"

#   tags = {
#     Name = "HelloWorld"
#   }
# }