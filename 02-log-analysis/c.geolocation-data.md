# KQL Queries Guide for Geolocation Data in Microsoft Sentinel

## Importing Geolocation Data into Sentinel

Follow these steps to download and import geolocation data into Microsoft Sentinel:

### Step 1: Download the CSV File

1. Find a publicly available geolocation data CSV file with around 50,000 entries.
2. Download the file to your local machine.

### Step 2: Upload the CSV File as a Watchlist in Sentinel

1. Go to **Microsoft Sentinel** and select your Sentinel instance.
2. Navigate to **Configuration** > **Watchlist**.
3. Click **Create a new watchlist** and give it an appropriate name (e.g., `Geolite2`). **Make sure the name is correct to avoid issues later.**
4. In the **Alias** field, enter the same name you used for the watchlist (e.g., `Geolite2`). Click **Next: Source**.
5. Click **Browse for files** and select the CSV file you downloaded earlier (e.g., `geolite2-country-ipv4.csv`).
6. For **SearchKey**, choose **Network**.
7. Click **Review and Create**, then click **Create** again.
8. Wait for the watchlist to fully import; it should contain about 20,000 rows.

## Notes
In real scenarios, this location data would typically come from a live source or be updated automatically by your service provider.

---
