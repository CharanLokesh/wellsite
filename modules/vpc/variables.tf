# Variables for the VPC module

# VPC related variables
variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "The name tag for the VPC"
  type        = string
}

# Subnets variable (list of maps to define multiple subnets)
variable "subnets" {
  description = "A list of subnets to create"
  type = list(object({
    cidr_block        = string
    availability_zone = string
    name              = string
  }))
}

# Internet Gateway related variables
variable "igw_name" {
  description = "The name tag for the Internet Gateway"
  type        = string
}

# Route Table related variables
variable "route_table_name" {
  description = "The name tag for the Route Table"
  type        = string
}
