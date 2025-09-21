# vpc.tf
# Created a VPC
# Defines the Virtual Private Cloud (VPC)

resource "aws_vpc" "main" {
  cidr_block = "var.vpc_cidr"

  tags = {
    Name = "Project VPC"
  }
}
