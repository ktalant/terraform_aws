output "dev_public_ip" {
  value = aws_instance.dev_instance.public_ip
}
output "dev_ami_id" {
  value = aws_instance.dev_instance.ami
}
