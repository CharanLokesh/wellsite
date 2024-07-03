# Variables for main.tf

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "subnet1_cidr" {
  description = "The CIDR block for subnet 1"
  type        = string
}

variable "subnet2_cidr" {
  description = "The CIDR block for subnet 2"
  type        = string
}

variable "subnet1_az" {
  description = "The availability zone for subnet 1"
  type        = string
}

variable "subnet2_az" {
  description = "The availability zone for subnet 2"
  type        = string
}
