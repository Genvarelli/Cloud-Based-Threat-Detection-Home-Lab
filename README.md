# Networking Architecture with Terraform

![Status](https://img.shields.io/badge/status-Completed-brightgreen)

## 🚀 Project Overview

This project showcases the creation of a secure and scalable network architecture on AWS using Terraform. It highlights essential cloud networking principles such as:

- Isolating network environments for enhanced security
- Managing secure access
- Automating infrastructure with Infrastructure as Code (IaC)

---

## ✨ Features

- Virtual Private Cloud (VPC): Establishes a secure, isolated network environment on AWS
- Public and Private Subnets: Segments network resources for improved security and organisation
- Internet Gateway: Enables internet connectivity for resources in public subnets
- Route Tables: Directs network traffic efficiently between subnets and gateways
- Security Groups: Acts as virtual firewalls to regulate inbound and outbound traffic 

---

## 👨🏽‍💻 Tech Stack

- AWS: Cloud platform hosting the network infrastructure
- Terraform: Infrastructure as Code tool for provisioning and managing resources
- VPC & Subnets: Core components for network isolation and segmentation
- Internet Gateway & Route Tables: Facilitate connectivity and direct network traffic
- Security Groups: Provide network security controls

---

## 📦 Getting Started

### ✅ Prerequisites

To get started, you should have:

- Basic understanding of AWS services (VPC, subnets, security groups)  
- Familiarity with Terraform syntax and workflow  
- Knowledge of networking concepts (IP addresses, routing, firewalls)  
- AWS CLI configured and access to an AWS account with the right permissions  

---

### 🛠️ Installation Notes

- All infrastructure is deployed using the **Terraform CLI & AWS CLI**  
- Resources were tested in the `eu-north-1` region  
- Project built and verified with **Terraform v1.13.3**  
- AWS resources were properly cleaned up after deployment  

---

### 📖 Usage

## Running the Terraform

```bash
# Initialize Terraform
terraform init

# Validate the configuration
terraform validate

# Preview changes
terraform plan

# Apply changes to deploy infrastructure
terraform apply

# Destroy infrastructure when done
terraform destroy
```

---

## ✅ Key Takeaways

This project results in a modular, secure AWS network architecture, fully deployed using Terraform. It is ideal for:
- Running cloud workloads
- Expanding into full-stack cloud environments
- Showcasing Terraform and AWS networking skills

Through this project, I gained hands-on experience with:
- Infrastructure as Code (IaC)
- Core AWS networking components
- Segmentation and access control strategies
- Building scalable, repeatable infrastructure

---

## 🔗 Resources

- [Terraform Docs](https://developer.hashicorp.com/terraform/docs)  
- [AWS VPC Documentation](https://docs.aws.amazon.com/vpc/latest/userguide/)
  
---

## 🐛 Issues

Even though I'm new to terraform, setting it up on my Mac and connecting it to my AWS account was striaghtforward. Building this project was quite simple and straight forward as the documentation helped guide me on how and where to start.
Also, I later found out that I could have completed this project within my VSCode and I didnt have to be working from my Mac terminal(I'm glad I know this now for next time😅)

---

## 📜 License

Authored by © Genesis Phillips
