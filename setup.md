# AWS Networking Setup with Terraform

This document explains the key Terraform configuration files used to build the AWS network infrastructure.

---

## Objective

This document provides a detailed explanation of the **Networking Architecture with Terraform** project. The primary objective is to demonstrate how to design and implement a secure, scalable cloud network architecture on AWS using Terraform. By following this project, you will gain hands-on experience with foundational cloud networking concepts and Infrastructure as Code (IaC) best practices. The project aims to equip me with the skills necessary to create isolated network environments, manage secure access, and automate infrastructure deployment in a professional, repeatable manner.

## Prerequisites

Before diving into this project, it is recommended that you have a basic understanding of:

- AWS cloud services, particularly networking components such as VPCs, subnets, and security groups
- Terraform basics, including configuration files and commands
- General networking concepts such as IP addressing, routing, and firewall rules
- Command-line interface (CLI) usage and access to an AWS account with appropriate permissions

## Technologies Used

This project leverages the following technologies:

- **AWS (Amazon Web Services):** Cloud platform hosting the network infrastructure
- **Terraform:** Infrastructure as Code tool used to automate and manage AWS resources declaratively
- **AWS VPC:** Virtual Private Cloud for creating isolated network environments
- **Security Groups:** Virtual firewalls for controlling inbound and outbound traffic
- **Internet Gateway & Route Tables:** Components enabling internet access and traffic routing within the network

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

```hcl
data "aws_availability_zones" "available" {}

resource "aws_subnet" "public" {
  count             = var.public_subnet_count
  vpc_id            = aws_vpc.main.id
  cidr_block        = cidrsubnet(aws_vpc.main.cidr_block, 8, count.index)
  availability_zone = element(data.aws_availability_zones.available.names, count.index)

  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-${count.index}"
  }
}

resource "aws_subnet" "private" {
  count             = var.private_subnet_count
  vpc_id            = aws_vpc.main.id
  cidr_block        = cidrsubnet(aws_vpc.main.cidr_block, 8, count.index + 2)
  availability_zone = element(data.aws_availability_zones.available.names, count.index)

  map_public_ip_on_launch = false

  tags = {
    Name = "private-subnet-${count.index}"
  }
}

```

## Step 3: Set up Internet Gateway

```hcl
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "Project VPC IGW"
  }
}

```

## Step 4: Create a Second Route Table

```hcl
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "public-rt"
  }
}

resource "aws_route_table_association" "public_assoc" {
  count          = 2
  subnet_id      = aws_subnet.public[count.index].id
  route_table_id = aws_route_table.public_rt.id
}
```

## Step 5: Create a Security Group

```hcl
resource "aws_security_group" "public_sg" {
  name        = "public-sg"
  description = "Allow SSH from my IP and HTTP from anywhere"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "SSH from my IP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.allowed_ssh_ip]  # Replace with your actual IP!
  }

  ingress {
    description = "HTTP from anywhere"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "public-security-group"
  }
}

```
