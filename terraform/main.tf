
provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "devops_demo" {
  ami           = "i-0b4659902c3e80571"
  instance_type = "t3.micro"
  key_name      = "devops-key"

  tags = {
    Name = "DevOps-Terraform-Ansible"
  }

  provisioner "local-exec" {
    command = "echo ${self.public_ip} > ../ansible/inventory.ini"
  }
}
