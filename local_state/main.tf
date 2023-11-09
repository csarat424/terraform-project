terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

# code block for Creating an EC2 instance
resource "aws_instance" "my_ec2_instance" {
  ami           = "ami-0fc5d935ebf8bc3bc"
  instance_type = "t2.micro"

  tags = {
    Name = "MyInstance"
  }
}

# code for veiwing ec2 public_ip as output
output "EC2PublicIP" {
  value = "${aws_instance.my_ec2_instance.public_ip}"
}

