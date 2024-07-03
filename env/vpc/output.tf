# Output the VPC ID
output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.wellsite_vpc.id
}

# Output the Subnet IDs
output "subnet_ids" {
  description = "The IDs of the created subnets"
  value       = aws_subnet.wellsite_subnet[*].id
}

# Output the Internet Gateway ID
output "internet_gateway_id" {
  description = "The ID of the Internet Gateway"
  value       = aws_internet_gateway.wellsite_igw.id
}

# Output the Route Table ID
output "route_table_id" {
  description = "The ID of the Route Table"
  value       = aws_route_table.wellsite_rt.id
}
