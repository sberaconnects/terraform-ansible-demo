
provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "devops_demo" {
  ami = "ami-0c1ac8a41498c1a9c"  # eu-north-1 (Stockholm)
  instance_type = "t3.micro"
  key_name      = "devops-key"

  tags = {
    Name = "DevOps-Terraform-Ansible"
  }

  provisioner "local-exec" {
    command = "echo ${self.public_ip} > ../ansible/inventory.ini"
  }
}
