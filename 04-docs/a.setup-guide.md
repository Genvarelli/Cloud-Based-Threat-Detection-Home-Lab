# 📌 Resources Setup Guide  
🚀 *Follow this guide to set up all the required tools for your Cloud-Based Security Monitoring with Microsoft Azure project.*  

---

## 1️⃣ System Requirements  
Before setting up, ensure your machine meets these **minimum requirements**:  

- **CPU:** Quad-core (Intel i5/i7 or AMD equivalent)  
- **RAM:** **16GB+** (Recommended for running multiple virtual machines)  
- **Storage:** **100GB+** free space (Preferably SSD for better performance)  
- **Operating System:** Windows 10/11, macOS, or Linux  

> **💡 Note:** If your local machine is not powerful enough, consider using cloud-based virtualisation platforms such as **AWS, Azure, or Google Cloud**.  

---

## 2️⃣ Required Software & Downloads  

📥 **Download and install the following tools before proceeding:**  

| **Tool** | **Description** | **Download Link** |
|----------|---------------|-------------------|
| **Microsoft Azure Subscription** | Cloud platform for creating VMs and other resources | [Get Azure Free](https://azure.microsoft.com/en-us/free/) |
| **Azure CLI** | Command-line interface for managing Azure resources | [Download Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli) |
| **Microsoft Sentinel** | Cloud-native SIEM tool for security event analysis | [Microsoft Sentinel](https://learn.microsoft.com/en-us/azure/sentinel/) |
| **KQL (Kusto Query Language)** | Query language for querying log data in Azure | [Learn KQL](https://learn.microsoft.com/en-us/azure/data-explorer/kusto/query/) |

---

## 3️⃣ Azure Setup & Configuration  

🎯 *Follow these steps to set up your Azure environment:*  

### 🔹 Setting Up Azure Subscription & Virtual Machine  
1. **Sign up** for a **free Microsoft Azure subscription**.  
2. Follow the [Azure VM Setup Guide](01-azure-setup/a.vm-configuration.md) to deploy your first **Virtual Machine (VM)**.  
3. Configure your VM to act as a **honeypot** and expose it for traffic monitoring.  

> ⚙️ *Ensure your VM is configured with proper security settings for a controlled environment.*  

### 🔹 Setting Up Log Analytics Workspace  
1. **Create a Log Analytics Workspace** in Azure to collect and store logs.  
2. Follow the [Log Analytics Workspace Setup Guide](01-azure-setup/b.log-analytics-setup.md) to complete this step.  

---

## 4️⃣ Log Collection & Analysis  

### 🔹 Forwarding Logs to Log Analytics Workspace  
1. Follow the [Log Forwarding Configuration Guide](02-log-analysis/a.log-forwarding.md) to configure your VM to forward logs to your **Log Analytics Workspace**.  
2. Use **Microsoft Sentinel** to ingest and process the logs.  

### 🔹 Querying Logs with KQL  
1. Learn to query the logs using **KQL (Kusto Query Language)** by following the [KQL Queries Guide](02-log-analysis/b.kql-queries.md).  

### 🔹 Uploading Geolocation Data  
1. **Enrich your logs** with **Geolocation Data** to provide more context in your security analysis.  
2. Follow the [Geolocation Data Upload Guide](02-log-analysis/c.geolocation-data.md) to complete this step.  

### 🔹 Inspecting Enriched Logs & Attack Sources  
1. Follow the [Attack Source Analysis Guide](02-log-analysis/d.attack-source-analysis.md) to inspect the enriched logs and identify potential threats.

---

## 5️⃣ Threat Detection & Incident Response  

### 🔹 Creating an Attack Map  
1. Create an **Attack Map** to visualise security threats and analyse the collected data.  
2. Follow the [Attack Map Visualisation Guide](03-threat-detection/a.attack-map.md) for detailed steps.  

### 🔹 Generating & Handling Incidents  
1. Learn how to **create incidents** and manage **incident response** in **Microsoft Sentinel**.  
2. Follow the [Incident Response Guide](03-threat-detection/b.incident-creation.md) to understand the process.

---

## 🎯 Next Steps: Continue with Project Phases  
Once all resources are set up and connected, move on to the next phase in the **[Azure Security Project Guide](../01-azure-setup/a.vm-configuration.md)** to dive deeper into threat detection and incident response.
