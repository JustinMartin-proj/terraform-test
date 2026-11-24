terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-2" 
}

resource "aws_instance" "web_server" {
  ami           = "ami-09a2f74ce8538e414"
  instance_type = "t3.micro"

  tags = {
    Name = "Deploying to AWS via GitHub"
  }
}
