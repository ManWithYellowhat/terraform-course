terraform {
    required_providers {
      source = "hashicorp/aws"
    }
}

provider "aws" {
    profile = "default"
    region = "us-east-1"
}

resource "aws_instance" "ec2demo" {
    ami = "ami-09439f09c55136ecf"
    instance_type = "t2.micro"
}