# Cloud Threat Hunting Simulation

## Objective
This project focuses on building a cloud-based Security Operations Centre (SOC) using **Microsoft Azure** and **Microsoft Sentinel**.  
The main goal is to deploy a **honeypot virtual machine (VM)**, forward logs to Sentinel, and analyse events to simulate **threat hunting** and **incident response** in a cloud environment.

## Skills Learned
- Hands-on experience with cloud-based SIEM (Microsoft Sentinel)  
- Log collection, analysis, and querying using **KQL (Kusto Query Language)**  
- Deploying and configuring VMs in Azure  
- Conducting threat detection, investigation, and incident response workflows  
- Troubleshooting log ingestion and data integration issues  

## Tools Used
- **Microsoft Azure** (Free Tier)  
- **Microsoft Sentinel** for SIEM and analytics  
- **KQL (Kusto Query Language)** for log queries  
- **Virtual Machine (Honeypot)** for attack simulation  
- **Log Analytics Workspace** for centralised log storage  

## Steps

### 1. Azure Setup & Configuration
- Created a Microsoft Azure account (free tier).  
- Deployed a **Virtual Machine (VM)** configured as a honeypot.  
- Adjusted network settings to allow inbound traffic for simulated attacks.  

### 2. Log Collection & Analysis
- Configured **Log Analytics Workspace** to collect VM logs.  
- Integrated **Microsoft Sentinel** for real-time log monitoring.  
- Queried and analysed logs using **KQL** to detect suspicious activity.  

### 3. Threat Detection & Incident Response
- Simulated cyberattacks targeting the honeypot VM.  
- Built an **Attack Map** in Microsoft Sentinel to visualise threats.  
- Investigated incidents and identified patterns in attack data.  

## Challenges
Configuring **log ingestion** from the honeypot VM to Sentinel was a major challenge.  
Issues with forwarding logs (particularly around CSV compatibility) caused delays in event analysis.  
Despite troubleshooting, the issue persisted — highlighting the **complexity of integrating cloud-based security tools**.  
This project remains **in development**, with further refinements planned.  

## Learning Outcomes
- Gained hands-on experience setting up a **cloud SOC**.  
- Strengthened troubleshooting skills in Azure environments.  
- Learned the process of **incident detection, triage, and response** with Microsoft Sentinel.  
- Enhanced understanding of **log ingestion pipelines** and their challenges.  

## Future Work
- Automate responses using **Sentinel Playbooks**.  
- Add **AWS GuardDuty integration** for multi-cloud security insights.  
- Simulate **advanced attack scenarios** (e.g., credential theft, persistence).  
- Expand logging sources for a more realistic SOC environment.  
