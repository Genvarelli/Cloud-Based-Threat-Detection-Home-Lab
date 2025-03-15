# Log Analytics Setup Guide

## Step 1: Create a Log Analytics Workspace

1. In the [Azure Portal](https://portal.azure.com), search for **Log Analytics Workspace**.
2. Click **Create**, then choose the resource group you created earlier (e.g., **GV-SOC-LAB**).
3. Give your Log Analytics workspace a name of your choice.
4. Select **Review + Create** and then click **Create**.

## Step 2: Create a Microsoft Sentinel Instance

1. In the search bar, search for **Microsoft Sentinel** and select it.
2. Click **Create** and wait for the Log Analytics workspace to finish creating. It should automatically appear in Microsoft Sentinel.
3. Once the workspace is visible, select the **Log Analytics Workspace** and click **Add**.
4. This will link the Log Analytics workspace to the SIEM, allowing you to access logs from your Log Repository within Microsoft Sentinel.
