# Architecture Overview

## Module 1: Networking Setup – SecureCloudVPC

In this module, I built a **secure network architecture** in AWS to separate public and private resources, following best practices for a production-ready environment. The goal was to create a **foundational network** that could safely host web applications and backend services while controlling internet access.

### What I Did
1. **Created a Custom VPC**
   - Name: `SecureCloudVPC`
   - CIDR block: `10.0.0.0/16`
   - This defines the entire network range for all resources in the project.

2. **Created Subnets**
   - **Public subnet:** `10.0.1.0/24` – hosts resources that require direct internet access.
   - **Private subnet:** `10.0.2.0/24` – hosts internal resources that should not be directly accessible from the internet.

3. **Internet Gateway (IGW)**
   - Attached to the VPC to allow **public subnet resources** to communicate with the internet.

4. **NAT Gateway**
   - Placed in the public subnet to allow **private subnet resources** to initiate outbound internet connections safely.

5. **Route Tables**
   - **Public subnet route table:** routes all internet-bound traffic (`0.0.0.0/0`) to the IGW.
   - **Private subnet route table:** routes all internet-bound traffic to the NAT Gateway.


### Key Takeaways
- Network is **segmented** into public and private zones.
- Internet access is **controlled and secure**.
- Setup is **scalable and ready for additional modules** like IAM roles, S3, and logging.

