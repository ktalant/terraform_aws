resource "aws_instance" "dev_instance" {
  ami           = var.vm_ami
  instance_type = var.vm_type
}