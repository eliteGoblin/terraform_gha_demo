provider "aws" {
  region = var.region
}

resource "aws_vpc" "demo_vpc" {
  cidr_block = var.cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "DemoVPC"
  }
}

resource "aws_subnet" "demo_subnet" {
  vpc_id     = aws_vpc.demo_vpc.id
  cidr_block = var.subnet_cidr_block

  tags = {
    Name = "DemoSubnet"
  }
}

resource "aws_vpc" "demo_vpc_2" {
  cidr_block = var.another_cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "DemoVPC2"
  }
}

resource "aws_subnet" "demo_subnet_2" {
  vpc_id     = aws_vpc.demo_vpc_2.id
  cidr_block = var.another_subnet_cidr_block

  tags = {
    Name = "DemoSubnet2"
  }
}


output "subnet_id" {
  value = aws_subnet.demo_subnet.id
}

output "subnet_2_id" {
  value = aws_subnet.demo_subnet_2.id
}
