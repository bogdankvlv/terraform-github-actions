output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.kubernetes_vpc.id
  
}

output "public_subnet1_id" {
  description = "The ID of the first public subnet"
  value       = aws_subnet.public_subnet1.id
}

output "public_subnet2_id" {
  description = "The ID of the second public subnet"
  value       = aws_subnet.public_subnet2.id
 
}

output "public_subnet_ids" {
  description = "The IDs of the public subnets"
  value       = [aws_subnet.public_subnet1.id, aws_subnet.public_subnet2.id]
}