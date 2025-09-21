# Outputs from Terraform
# outputs.tf

# Output the ID of the VPC created
output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

# Output the list of public subnet IDs
output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value       = aws_subnet.public[*].id
}

# Output the list of private subnet IDs
output "private_subnet_ids" {
  description = "IDs of the private subnets"
  value       = aws_subnet.private[*].id
}

# Output the Internet Gateway ID
output "internet_gateway_id" {
  description = "The ID of the Internet Gateway"
  value       = aws_internet_gateway.igw.id
}

# Output the Security Group ID for public access
output "public_security_group_id" {
  description = "Security group ID for public access"
  value       = aws_security_group.public_sg.id
}
