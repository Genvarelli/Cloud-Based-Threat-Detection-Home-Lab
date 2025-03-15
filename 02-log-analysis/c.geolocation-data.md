# KQL Queries Guide for Geolocation Data in Microsoft Sentinel

## Importing Geolocation Data into Sentinel

Follow these steps to download and import geolocation data into Microsoft Sentinel:

### Step 1: Download the CSV File

1. Find a publicly available geolocation data CSV file with approximately 50,000 entries.
2. Download the file to your local machine.

### Step 2: Upload the CSV File as a Watchlist in Sentinel

1. Navigate to **Microsoft Sentinel** and select your Sentinel instance.
2. Go to **Configuration** > **Watchlist**.
3. Click **Create a new watchlist** and name the file appropriately (e.g., `Geolite2`). **Ensure the naming is correct to prevent issues later.**
4. For **Alias**, enter the same name you used for the watchlist (e.g., `Geolite2`). Click **Next: Source**.
5. Click **Browse for files** and select the CSV file you downloaded earlier (e.g., `geolite2-country-ipv4.csv`).
6. Choose **Network** as the **SearchKey**.
7. Click **Review and Create**, then click **Create** again.
8. Wait for the data to populate, as it may take some time to appear.

---

## KQL Queries for Geolocation Data

### Retrieve All Geolocation Data

```kql
Geolite2
| take 100
```

### Search for a Specific IP Address

```kql
Geolite2
| where Network == "192.168.1.1"
```

### Find Geolocation Data for IP Ranges

```kql
Geolite2
| where Network startswith "192.168."
```

### Get Geolocation Data for a Specific Country

```kql
Geolite2
| where Country == "United Kingdom"
```

### Join Geolocation Data with Sign-in Logs

```kql
SigninLogs
| join kind=inner (Geolite2) on $left.IPAddress == $right.Network
| project IPAddress, Country, Region, City, UserPrincipalName, TimeGenerated
```

### Identify Unauthorised Access from High-Risk Countries

```kql
SigninLogs
| join kind=inner (Geolite2) on $left.IPAddress == $right.Network
| where Country in ("Russia", "China", "Iran", "North Korea")
| project IPAddress, Country, UserPrincipalName, TimeGenerated
```

### Visualise Geolocation Data

```kql
Geolite2
| summarize Count = count() by Country
| sort by Count desc
```

---

## Notes

- Replace `Geolite2` with the actual watchlist name if different.
- Modify queries based on the structure of the imported CSV file.
- Use filtering to refine searches based on specific requirements.

This guide ensures you can efficiently import and query geolocation data in **Microsoft Sentinel** using **KQL**.

