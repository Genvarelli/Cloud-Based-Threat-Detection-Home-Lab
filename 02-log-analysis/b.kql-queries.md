# KQL Queries Guide for Log Analytics and Sentinel Integration

This guide will walk you through the process of using KQL (Kusto Query Language) to query logs in Azure Sentinel after connecting your log repository to Sentinel.

## Steps to Query Logs in Sentinel

1. **Search Log Analytics Workspace**
   - Navigate to the Log Analytics workspace that you created.
   - On the left menu, click *Logs*.

2. **Switch to KQL Mode**
   - In the query box, switch from *Simple Mode* to *KQL Mode*.

3. **Check if Logs Are Flowing**
   - To verify if logs are coming in, search for `SecurityEvent` and click *Run*.
   - This will show logs from the SecurityEvent table. Note that it may take a few minutes for the logs to show up.

4. **Filter by User Principal Name (Account)**
   - To search logs for a specific account, you can filter by `UserPrincipalName` (the account's email or username).
   - Example KQL query to filter by account:
   
     ```kql
     SecurityEvent
     | where UserPrincipalName == "user@example.com"
     | project TimeGenerated, Account, Computer, EventID, Activity, IpAddress
     ```

   - Running this query will display records related to the specified account only.

5. **Query for Logon Failures**
   - To see logon failures, you can use this KQL query:

     ```kql
     SecurityEvent
     | where EventID == 4625  // EventID 4625 represents logon failure
     | project TimeGenerated, Account, Computer, EventID, Activity, IpAddress
     ```

6. **Experiment with KQL Queries**
   - Feel free to play around with different KQL queries to filter and find the data you need.
   - For more advanced KQL queries, check out this free tutorial: [Learn common Kusto Query Language operators](https://learn.microsoft.com/en-us/kusto/query/tutorials/learn-common-operators).

---

With these steps, you'll be able to query your log data in Azure Sentinel more effectively. Good luck with your queries!
