# Cloud Threat Hunting Simulation

## Objective
This project aimed to establish a cloud-based Security Operations Centre (SOC) using Microsoft Azure and Microsoft Sentinel. The primary goal was to set up a virtual machine (VM) as a honeypot, forward logs to Microsoft Sentinel, and analyse security events for threat detection and incident response.

### Skills Learned
- Practical experience with cloud-based SIEM (Microsoft Sentinel)
- Log collection, analysis, and querying using KQL (Kusto Query Language)
- Configuring and managing virtual machines in Azure
- Threat detection, analysis, and incident response workflows
- Troubleshooting log ingestion and data integration issues

### Tools Used
- Microsoft Azure (Free Tier)
- Microsoft Sentinel for log analysis
- KQL (Kusto Query Language) for querying logs
- Virtual Machine (VM) as a honeypot
- Log Analytics Workspace for centralised log storage

## Steps
### 1. Azure Setup & Configuration
- Created a free Microsoft Azure account.
- Deployed a Virtual Machine (VM) to act as a honeypot.
- Configured the VM’s network settings to allow inbound traffic for attack simulation.

### 2. Log Collection & Analysis
- Set up Log Analytics Workspace to collect logs from the VM.
- Integrated Microsoft Sentinel for real-time log analysis.
- Used KQL to query and analyse log data for security insights.

### 3. Threat Detection & Incident Response
- Simulated attack scenarios on the honeypot.
- Created an Attack Map in Microsoft Sentinel to visualise security threats.
- Investigated security incidents and analysed event data for patterns.

## Challenges
One major challenge was configuring log ingestion from the honeypot VM to Microsoft Sentinel. Log forwarding issues, especially with CSV file format compatibility, caused delays in data processing. Despite extensive troubleshooting, the issue remained unresolved, highlighting the complexities of cloud-based integrations. I'm revisiting this project because getting it right will be valuable for my growth.

## Learning Outcomes
- Gained hands-on experience setting up a cloud-based SOC.
- Improved troubleshooting skills for Azure log ingestion issues.
- Developed a better understanding of configuring security tools in the cloud.
- Learned how to create and respond to security incidents using Microsoft Sentinel.

## Future Work
- Automate incident response using Playbooks.
- Integrate additional security tools for enhanced log analysis.
- Simulate more advanced attack scenarios for deeper analysis.
