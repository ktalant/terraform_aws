resource "aws_instance" "dev_instance" {
  ami                   = var.vm_ami
  instance_type         = var.vm_type
  security_groups       = var.var_my_dev_sg
  count                 = var.vm_count
  key_name              = aws_key_pair.talant_key_pair.key_name
  
  tags = {
    Name                = "dev-vm"
    env                 = "dev"
    app                 = "app1"
  }

  provisioner "remote-exec" {
    connection {
      host        = self.public_ip
      type        = "ssh"
      user        = var.var_user
      private_key = file(var.var_ssh_key)
      }

    inline = [ 
      "sudo yum install -y epel-release", 
      "sudo yum install -y httpd",
      "sudo systemctl start httpd",
      "suod systemctl enable httpd",
      ] 
    }
  }
