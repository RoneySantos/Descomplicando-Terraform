output "dns_name" {
  value = aws_instance.web.public_dns
}

output "dns_name_west_2" {
  value = aws_instance.web_west_2.private_ip
}