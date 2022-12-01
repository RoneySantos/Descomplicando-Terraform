output "dns_name" {
  # value = aws_instance.web[*].public_dns #test using for_each
  value = {
    for instance in aws_instance.web:
    instance.id => instance.public_dns
  }
}
