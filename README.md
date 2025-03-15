# Cloud-Based Security Monitoring with Microsoft Azure 
**Tagline**: Set up a cloud-based SOC in Azure using Microsoft Sentinel for security event analysis and incident response.

## Description  
This project guides you through setting up a home **Security Operations Centre (SOC)** in **Microsoft Azure** with a **Virtual Machine (VM)**, exposing it as a honeypot and forwarding logs to **Microsoft Sentinel** for analysis. Gain hands-on experience in cloud security monitoring, threat detection, and incident response.

## Getting Started  
1. Create a free **Microsoft Azure** account.
2. Set up a **VM** and **Log Analytics Workspace**.
3. Integrate **Microsoft Sentinel** for log analysis.

### Dependencies  
- **Azure** account (free tier)
- Basic knowledge of **KQL (Kusto Query Language)**

### Basic Usage  
1. Follow setup guides for **VM** and **Log Analytics Workspace**.
2. Use **KQL** queries to analyse logs.
3. Visualise threats with the **Attack Map**.

## Usage  
1. **Azure Setup & Configuration**: Set up **VM** and **Log Analytics** ([Guide](01-azure-setup/a.vm-configuration.md))  
2. **Log Collection & Analysis**: Forward logs, query with **KQL**, and enrich with geolocation data ([Guide](02-log-analysis/a.log-forwarding.md))  
3. **Threat Detection & Incident Response**: Create an **Attack Map** and generate incidents in **Sentinel** ([Guide](03-threat-detection/a.attack-map.md))
