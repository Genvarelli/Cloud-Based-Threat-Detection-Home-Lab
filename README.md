# Cloud-Based Security Monitoring with Microsoft Azure

## Project Overview
This project sets up a basic home SOC in **Microsoft Azure** from scratch. Using a free Azure subscription, we create a **Virtual Machine (VM)**, expose it as a honeypot, and forward logs to a central repository. We then integrate **Microsoft Sentinel** to analyse real-world attack data, providing hands-on experience in **cloud security monitoring**, **threat detection**, and **SOC operations**.

## Key Features
- Set up a **free Azure subscription** and deployed a **Virtual Machine**.
- Created a **Log Analytics Workspace** to collect and store logs.
- Integrated **Microsoft Sentinel** to analyze security events.
- Used **KQL (Kusto Query Language)** for querying log data.
- Uploaded **Geolocation Data** to enrich security analysis.
- Created an **Attack Map** to visualize real-world threats.
- Demonstrated **Incident Creation & Response** in a cloud SOC environment.

## Project Phases
### Phase 1: Azure Setup & Configuration
- **Azure Subscription & VM Setup**: [Instructions](01-azure-setup/a.vm-configuration.md)
- **Log Analytics Workspace Setup**: [Guide](01-azure-setup/b.log-analytics-setup.md)

### Phase 2: Log Collection & Analysis
- **Forwarding Logs to Log Analytics Workspace**: [Configuration](02-log-analysis/a.log-forwarding.md)
- **Querying Logs with KQL**: [KQL Queries](02-log-analysis/b.kql-queries.md)
- **Uploading Geolocation Data to SIEM**: [Guide](02-log-analysis/c.geolocation-data.md)
- **Inspecting Enriched Logs & Attack Sources**: [Analysis](02-log-analysis/d.attack-source-analysis.md)

### Phase 3: Threat Detection & Incident Response
- **Creating an Attack Map**: [Visualisation](03-threat-detection/a.attack-map.md)
- **Generating & Handling Incidents in Sentinel**: [Incident Response](03-threat-detection/b.incident-creation.md)

## Resources
- [Setup Guide](04-docs/a.setup-guide.md)
- [Project Summary](04-docs/b.project-summary.md)
