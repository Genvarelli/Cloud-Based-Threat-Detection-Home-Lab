# AWS Networking Setup with Terraform

This document explains the key Terraform configuration files used to build the AWS network infrastructure.

---

## Step 1: Create Virtual Private Cloud (VPC)

```hcl
resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr

  tags = {
    Name = "Project VPC"
  }
}
```

## Step 2: Create Subnets (Public and Private)
## Step 3: Set up Internet Gateway
## Step 4: Create a Second Route Table
## Step 5: Create a Security Group
