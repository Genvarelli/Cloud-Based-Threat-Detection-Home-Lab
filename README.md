# Networking Architecture with Terraform

![Status](https://img.shields.io/badge/status-Completed-brightgreen)

## 🚀 Project Overview

This project demonstrates how to build a **secure cloud network architecture** on AWS using **Terraform**. It focuses on foundational cloud networking principles and best practices, including:

- Creating isolated network environments
- Managing secure access
- Automating infrastructure with Infrastructure as Code (IaC)

---

## ✨ Features

- **Virtual Private Cloud (VPC)** – Creates a logically isolated AWS network  
- **Subnets** – Separated into public and private zones  
- **Internet Gateway** – Provides internet access for public resources  
- **Route Tables** – Manages traffic flow between network segments  
- **Security Groups** – Virtual firewalls to control inbound/outbound traffic  

---

## 👨🏽‍💻 Tech Stack

- **AWS:** The cloud platform where the network runs
- **Terraform:** The tool used to write and manage infrastructure as code
- **VPC (Virtual Private Cloud):** To create private networks in AWS
- **Security Groups:** Virtual firewalls controlling network traffic
- **Internet Gateway & Route Tables:** To enable internet access and manage traffic flow

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

- All infrastructure is deployed using the **Terraform CLI**  
- Resources were tested in the `eu-north-1` region  
- Project built and verified with **Terraform v1.13.3**  
- AWS resources were properly cleaned up after deployment  

---

### 📖 Usage

## Running the Terrform

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

---

## 📜 License

Authored by © Genesis Phillips
