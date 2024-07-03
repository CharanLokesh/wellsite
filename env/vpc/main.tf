# Define the module with variables directly passed in the module block

module "vpc" {
  source = "./modules/vpc"
  
  # VPC variables
  vpc_cidr = "10.0.0.0/16"
  vpc_name = "wellsite-staging-vpc"
  
  # Subnets list of maps
  subnets = [
    {
      cidr_block        = "10.0.1.0/24"
      availability_zone = "us-west-2a"
      name              = "wellsite-subnet-1"
    },
    {
      cidr_block        = "10.0.2.0/24"
      availability_zone = "us-west-2b"
      name              = "wellsite-subnet-2"
    }
  ]
  
  # Internet Gateway variable
  igw_name = "wellsite-igw"
  
  # Route Table variable
  route_table_name = "wellsite-rt"
}
