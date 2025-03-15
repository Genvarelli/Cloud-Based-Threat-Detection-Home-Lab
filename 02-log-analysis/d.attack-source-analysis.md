
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
