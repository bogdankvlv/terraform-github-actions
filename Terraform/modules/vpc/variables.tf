variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  
  
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
  
}


variable "public_subnet1_cidr_block" {
  description = "The CIDR block for the first public subnet"
  type        = string  
  
}
variable "public_subnet1_az" {
  description = "The availability zone for the first public subnet"
  type        = string
  
}
variable "public_subnet1_name" {
  description = "The name of the first public subnet"
  type        = string
  
}
variable "public_subnet2_cidr_block" {
  description = "The CIDR block for the second public subnet"
  type        = string                                              
}
variable "public_subnet2_az" {
  description = "The availability zone for the second public subnet"
  type        = string  
}
variable "public_subnet2_name" {
    description = "The name of the second public subnet"
    type        = string
}
variable "igw_name" {
  description = "The name of the Internet Gateway"
  type        = string
  
}
variable "route_table_cidr_block" {
  description = "The CIDR block for the route table"
  type        = string              
}
variable "route_table_name" {
    description = "The name of the route table"
    type        = string
}
