## Project Summary

### Project Overview  
This project helps solve the problem of gaining practical cloud security experience. It’s designed for anyone starting in cybersecurity, offering a simple way to set up a SOC and work with real-world data. By analysing logs from a honeypot in Microsoft Sentinel, I got the chance to practice detecting threats and responding to security incidents.

### Technical Details  
- **Platform**: Microsoft Azure (Free Tier)  
- **Tools**: Microsoft Sentinel, KQL (Kusto Query Language)  
- **Key Features**: Forwarding logs, creating an Attack Map, incident response  

### Challenges  
While working on this project, I encountered a significant challenge with **log ingestion**. Specifically, I struggled with **configuring log forwarding** from the honeypot VM to **Microsoft Sentinel**. The issue was primarily with the **CSV file format** and its integration with Azure's ingestion pipeline, which caused delays in processing the data. Despite extensive troubleshooting, including reviewing **KQL queries** and diagnostic logs, the issue remained unresolved by the project's end. This challenge gave me valuable insights into the complexities of cloud-based integrations, particularly around **data format compatibility** and troubleshooting **connector configurations** in Microsoft Azure.

### What I Learned  
Though the project couldn’t be fully completed as originally planned, I gained crucial insights into **cloud-based security tools** and **incident response workflows**. I learned how to effectively troubleshoot technical issues in **Azure Sentinel**, especially concerning **log ingestion and data integration**. Additionally, I now better understand the importance of detailed error logs and **configuring data connectors** correctly. This experience has given me a solid foundation for tackling more complex cloud security projects in the future.

### Learning Outcomes  
- Learned how to set up a basic cloud SOC  
- Gained skills in **KQL** for querying log data  
- Practiced creating and responding to incidents in Microsoft Sentinel  

### Future Work  
- Plan to **automate incident response** using Playbooks  
- Explore integrating more **security tools** for enhanced analysis  
- Work on **simulating more advanced attack scenarios**

### References  
- [Microsoft Azure](https://azure.microsoft.com)  
- [Microsoft Sentinel Documentation](https://learn.microsoft.com/en-us/azure/sentinel/)  
- [KQL Documentation](https://learn.microsoft.com/en-us/azure/data-explorer/kusto/query/)
