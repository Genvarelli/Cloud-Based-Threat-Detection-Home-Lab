# Created a VPC
# Defines the Virtual Private Cloud (VPC)

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"


  tags = {
    Name = "Project VPC"
  }
}

