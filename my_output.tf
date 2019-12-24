output "dev_public_ip" {
  value = aws_instance.dev_instance[0].public_ip
}
output "dev_ami_id" {
  value = aws_instance.dev_instance[0].ami
}

output "dev_sec_group" {
  value = aws_security_group.sg2.name
}
