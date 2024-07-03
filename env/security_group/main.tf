provider "aws" {
  region = "us-east-1"  # Change this to your desired region
}

module "vpc_security_group" {
  source = "./modules/security_group"

  sg_name       = "wellsite-vpc-sg"
  vpc_id        = aws_vpc.wellsite_vpc.id
  sg_ingress_rules = [
    {
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
    },
    // Add more ingress rules as needed
  ]
  sg_egress_rules = [
    {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
    },
    // Add more egress rules as needed
  ]
}
