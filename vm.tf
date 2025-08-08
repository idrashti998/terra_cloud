terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.7.0"
    }
  }
}

variable "region_name" {
   default = "us-west-2"
}

provider "aws" {
  region     = var.region_name
}

resource "aws_instance" "demo" {
  ami                         = "ami-04e08e36e17a21b56" 
  instance_type               = "t2.micro"
  key_name                    = "oregan"
  tags = { 
    Name = "EC2-web" 
    }
}

