# Public IP address of the EC2 instance.
output "instance_public_ip" {
  value = aws_instance.web.public_ip
}

# Public DNS name of the EC2 instance.
output "instance_public_dns" {
  value = aws_instance.web.public_dns
}

# HTTP URL for quickly testing the instance.
output "http_url" {
  value = "http://${aws_instance.web.public_dns}"
}
