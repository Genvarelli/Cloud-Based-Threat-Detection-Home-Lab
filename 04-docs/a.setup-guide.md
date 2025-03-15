📌 **Resources Setup Guide**  
🚀 Follow this guide to get everything set up for the **Cloud-Based Security Monitoring with Microsoft Azure** project.

---

### 1️⃣ **System Requirements**  
Before you start, make sure your machine meets these minimum requirements:

- **CPU**: Quad-core (Intel i5/i7 or AMD equivalent)
- **RAM**: 16GB+ (Recommended if you plan to run multiple virtual machines)
- **Storage**: 100GB+ free space (SSD is preferred for better performance)
- **Operating System**: Windows 10/11, macOS, or Linux

💡 **Tip**: If your local machine doesn’t meet these specs, you can use cloud-based platforms like **AWS**, **Azure**, or **Google Cloud** for virtualisation.

---

### 2️⃣ **Required Software & Downloads**  
Download and install these tools before proceeding:

| Tool                        | Description                                            | Download Link            |
|-----------------------------|--------------------------------------------------------|--------------------------|
| **Microsoft Azure Subscription** | Cloud platform for VMs and other resources            | [Get Azure Free](https://azure.microsoft.com/en-us/free/) |
| **Azure CLI**                | Command-line interface for managing Azure resources    | [Download Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli) |
| **Microsoft Sentinel**       | SIEM tool for security event analysis                  | [Microsoft Sentinel](https://learn.microsoft.com/en-us/azure/sentinel/) |
| **KQL (Kusto Query Language)** | Query language for analysing log data in Azure         | [Learn KQL](https://learn.microsoft.com/en-us/azure/data-explorer/kusto/query/) |

---

### 3️⃣ **Azure Setup & Configuration**  
Here’s how to set up your Azure environment:

🔹 **Setting Up Azure Subscription & Virtual Machine**  
1. Sign up for a free Microsoft Azure account.  
2. Follow the [Azure VM Setup Guide](01-azure-setup/a.vm-configuration.md) to deploy your first Virtual Machine (VM).  
3. Configure the VM to act as a honeypot for traffic monitoring.  
4. Make sure your VM has the right security settings for a controlled environment.

🔹 **Setting Up Log Analytics Workspace**  
1. Create a Log Analytics Workspace to collect and store logs.  
2. Follow the [Log Analytics Setup Guide](01-azure-setup/b.log-analytics-setup.md).

---

### 4️⃣ **Log Collection & Analysis**  
- 🔹 **Forwarding Logs to Log Analytics Workspace**  
    1. Follow the [Log Forwarding Configuration Guide](02-log-analysis/a.log-forwarding.md) to configure your VM to send logs to your Log Analytics Workspace.  
    2. Use **Microsoft Sentinel** to process these logs.

- 🔹 **Querying Logs with KQL**  
    Learn how to query the logs using **KQL (Kusto Query Language)** by following the [KQL Queries Guide](02-log-analysis/b.kql-queries.md).

- 🔹 **Uploading Geolocation Data**  
    Enrich your logs by adding **Geolocation Data**. Follow the [Geolocation Data Upload Guide](02-log-analysis/c.geolocation-data.md).

- 🔹 **Inspecting Enriched Logs & Attack Sources**  
    Follow the [Attack Source Analysis Guide](02-log-analysis/d.attack-source-analysis.md) to inspect the enriched logs and look for potential threats.

---

### 5️⃣ **Threat Detection & Incident Response**  
- 🔹 **Creating an Attack Map**  
    Create an **Attack Map** to visualise security threats. Follow the [Attack Map Visualisation Guide](03-threat-detection/a.attack-map.md).

- 🔹 **Generating & Handling Incidents**  
    Learn how to create and handle incidents in **Microsoft Sentinel**. Follow the [Incident Response Guide](03-threat-detection/b.incident-creation.md).

---

🎯 **Next Steps**: Once all resources are set up, follow the next phases in the [Azure Security Project Guide](04-docs/a.setup-guide.md) to dive deeper into threat detection and incident response.
