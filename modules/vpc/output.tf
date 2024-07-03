# Outputs for the VPC module

output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.wellsite_vpc.id
}

output "subnet_ids" {
  description = "The IDs of the subnets"
  value       = aws_subnet.wellsite_subnet[*].id
}

output "internet_gateway_id" {
  description = "The ID of the Internet Gateway"
  value       = aws_internet_gateway.wellsite_igw.id
}

output "route_table_id" {
  description = "The ID of the Route Table"
  value       = aws_route_table.wellsite_rt.id
}
