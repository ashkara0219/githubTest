terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.8.0"
    }
  }
}
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}
resource "aws_instance" "my32_server" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = var.instance_type
}
output "instance_ip_addr" {
  value = aws_instance.my32_server.public_ip
}
variable "instance_type" {
  type        = string
  description = "size of instance"
}

//hiiiiii
    
