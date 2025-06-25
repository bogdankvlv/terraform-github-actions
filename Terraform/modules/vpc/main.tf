// This module creates a VPC with two public subnets, an Internet Gateway, and a route table for a Kubernetes cluster.

resource "aws_vpc" "kubernetes_vpc" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = var.vpc_name
  }
  
}
// Create 2 Public Subnets
resource "aws_subnet" "public_subnet1" {
  vpc_id     = aws_vpc.kubernetes_vpc.id
  cidr_block = var.public_subnet1_cidr_block
  availability_zone = var.public_subnet1_az
  map_public_ip_on_launch = true

  tags = {
    Name = var.public_subnet1_name
  }
}
// Create a second public subnet
resource "aws_subnet" "public_subnet2" {
  vpc_id     = aws_vpc.kubernetes_vpc.id
  cidr_block = var.public_subnet2_cidr_block
  availability_zone = var.public_subnet2_az
  map_public_ip_on_launch = true

  tags = {
    Name = var.public_subnet2_name
  }
}
// Create an Internet Gateway for the VPC+
resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.kubernetes_vpc.id
    tags = {
        Name = "var.igw_name"
    }
    
}
// Create a route table for the public subnets
resource "aws_route_table" "route_table" {
  vpc_id = aws_vpc.kubernetes_vpc.id

    route {
        cidr_block = var.route_table_cidr_block
        gateway_id  = aws_internet_gateway.igw.id
    }
    tags = {
        Name = "var.route_table_name"
    }
}
// Create a route table association for the public subnets
resource "aws_route_table_association" "public_subnet1_association" {
  subnet_id      = aws_subnet.public_subnet1.id
  route_table_id = aws_route_table.route_table.id
}

resource "aws_route_table_association" "public_subnet2_association" {
  subnet_id      = aws_subnet.public_subnet2.id
  route_table_id = aws_route_table.route_table.id
}


