# KQL Queries Guide for Log Analytics and Sentinel Integration

This guide explains how to use KQL (Kusto Query Language) to query logs in Azure Sentinel after connecting your log repository to Sentinel.

## Steps to Query Logs in Sentinel

1. **Search Log Analytics Workspace**  
   - Go to the Log Analytics workspace you created.
   - On the left-hand side, click on *Logs*.

2. **Switch to KQL Mode**  
   - In the query box, switch from *Simple Mode* to *KQL Mode*.

3. **Check if Logs Are Flowing**  
   - To check if logs are flowing, search for `SecurityEvent` and click *Run*.  
   - This will display logs from the SecurityEvent table. It may take a few minutes for the logs to appear in the query table.

4. **Filter by User Principal Name (Account)**  
   - If you want to query logs related to a specific account, you can filter by the `UserPrincipalName` (the account’s email or username).  
   - Example KQL query to filter by account:
   
     ```kql
     SecurityEvent
     | where UserPrincipalName == "user@example.com"
     | project TimeGenerated, Account, Computer, EventID, Activity, IpAddress
     ```
   - Run the query to see records related only to that account.

5. **Query for Logon Failures**  
   - To see logon failures, use the following KQL code:

     ```kql
     SecurityEvent
     | where EventID == 4625  // EventID 4625 represents logon failure
     | project TimeGenerated, Account, Computer, EventID, Activity, IpAddress
     ```

6. **Experiment with KQL Queries**  
   - Feel free to experiment with KQL codes to filter and find the information you need.
   - For more advanced KQL usage, check out the free resource: [Tutorial: Learn common Kusto Query Language operators]([com/en-us/kusto/query/tutorials/learn-common-operators?view=microsoft-fabric]).

---

With these steps, you can query your log data in Azure Sentinel efficiently. Happy querying!
