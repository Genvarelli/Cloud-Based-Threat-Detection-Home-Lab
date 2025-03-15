# Log forwarding for Azure Sentinel

## Prerequisites
- Azure Sentinel is connected to the Log Repository.
- Ensure you have the necessary permissions in Azure to configure resources.

**Configure Azure Monitoring Agent (AMA) Security Event Connector**  
The AMA Security Event Connector links your virtual machines (VMs) to the Log Analytics workspace, enabling the forwarding of logs.

## Steps to Configure Log Analytics:

1. **Navigate to Content Hub in Microsoft Sentinel**
   - In the Microsoft Sentinel portal, go to **Content Management**.
   - Click on **Content Hub**.

2. **Install Windows Security Event Collection**
   - In the Content Hub, search for "Windows Security Event".
   - Click on it and then click **Install**.

3. **Manage Windows Security Events via AMA**
   - Under the **Windows Security Event** option, click **Manage**.
   - Tick the box for **Windows Security Events via AMA**.

4. **Create Data Collection Rule**
   - Click **Open Connector Page**.
   - Click **Create Data Collection Rule**. This rule will forward logs from the VM to the Log Analytics workspace, making them available in your SIEM.

5. **Define the Data Collection Rule**
   - Name the rule (choose a name that is meaningful to your setup).
   - Select the original **Resource Group** you created earlier.
   - Click **Next: Resources**.

6. **Select the VM Resource**
   - Expand **Azure Subscription 1**, then expand the resource group you created.
   - Expand **VM** and select the virtual machine you want to configure.
   - Click **Next**.

7. **Configure Data Collection**
   - Leave the setting on **Collect all security events**.
   - Click **Review and Create**, then click **Create**.

## Final Notes:
Once the data collection rule is created, the logs from your VM will begin to flow into your Log Analytics workspace and be available in Sentinel for analysis.
