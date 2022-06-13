terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
        }
    }
}

provider "aws" {
    profile = "default"
    region = "us-east-1"
}

resource "aws_instance" "ec2demo" {
    ami = "ami-0022f774911c1d690"
    instance_type = "t2.micro"
}