project_name = "aws-eks-vpc"
region       = "us-east-1"

vpc_cidr = "10.0.0.0/16"

vpc_additional_cidrs = [
  "100.64.0.0/16"
]

public_subnets = [
  {
    name              = "subnet-public-1a"
    cidr              = "10.0.48.0/24"
    availability_zone = "us-east-1a"
  },
  {
    name              = "subnet-public-1b"
    cidr              = "10.0.49.0/24"
    availability_zone = "us-east-1b"
  },
  {
    name              = "subnet-public-1c"
    cidr              = "10.0.50.0/24"
    availability_zone = "us-east-1c"
  }
]