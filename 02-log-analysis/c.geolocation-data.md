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
8. Allow the watchlist to fully import, there should be a total of roughly 20,000 rows.


## Notes
In real life, this location data would come from a live source or it would be updated automatically on the back end by your service provider.

---
