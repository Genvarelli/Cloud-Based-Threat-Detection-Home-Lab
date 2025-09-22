# Networking Architecture with Terraform

![Status](https://img.shields.io/badge/status-Completed-brightgreen)

## 🚀 Project Overview

This project demonstrates how to build a **secure cloud network architecture** on AWS using **Terraform**. It focuses on foundational cloud networking principles and best practices, including:

- Creating isolated network environments
- Managing secure access
- Automating infrastructure with Infrastructure as Code (IaC)

The goal is to gain practical experience with AWS networking and Terraform, while building a clean, professional cloud setup for learning and portfolio purposes.

---

## 🧱 Architecture Overview

This network is designed from the ground up using **Terraform**, ensuring consistent, repeatable infrastructure deployment.

### Key Components

- **Virtual Private Cloud (VPC)** – Private network for AWS resources  
- **Subnets** – Divided into public and private zones  
- **Internet Gateway** – Enables internet access for public subnets  
- **Route Tables** – Manages traffic routing within the network  
- **Security Groups** – Controls traffic with virtual firewalls  

---

## Prerequisites

Before you start, it helps to have:

- Basic knowledge of AWS services like VPCs, subnets, and security groups
- Some experience with Terraform and how it works
- Understanding of basic networking (IP addresses, routing, firewalls)
- Access to the AWS CLI and an AWS account with the right permissions

---

## Technologies Used

This project uses:

- **AWS:** The cloud platform where the network runs
- **Terraform:** The tool used to write and manage infrastructure as code
- **VPC (Virtual Private Cloud):** To create private networks in AWS
- **Security Groups:** Virtual firewalls controlling network traffic
- **Internet Gateway & Route Tables:** To enable internet access and manage traffic flow

---
## 🧠 Key Learning Objectives

- Practice **Infrastructure as Code (IaC)** using Terraform  
- Understand core AWS **networking components**  
- Implement **segmentation and access control**  
- Develop repeatable, scalable network deployments  

---

## ✅ Outcome

This project results in a **secure, modular AWS network architecture** fully deployed via Terraform. It’s suitable for cloud workloads, extension into full-stack environments, or showcasing Terraform proficiency.

---

## 📌 Notes
All infrastructure was deployed using Terraform CLI.
AWS resources have been validated and cleaned up post-deployment.
Project tested in eu-north-1, Terraform v1.13.3.

---

## 🔗 Resources

- [Terraform Docs](https://developer.hashicorp.com/terraform/docs)  
- [AWS VPC Documentation](https://docs.aws.amazon.com/vpc/latest/userguide/)

