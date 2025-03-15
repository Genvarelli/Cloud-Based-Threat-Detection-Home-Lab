# Azure Project: Creating an Exposed Virtual Machine for Attack Simulation

### Prerequisites:
- Microsoft Azure account.
- Access to the Azure Portal.

### Steps to Create an Exposed Virtual Machine:

1. **Create a Resource Group:**
   - Log into your [Microsoft Azure Portal](https://portal.azure.com/).
   - Navigate to **Resource Groups** and click **Add**.
   - Name your resource group (e.g., `AttackSim-ResourceGroup`) and select the region closest to you.
   - Click **Review + Create** and then **Create**.

2. **Create a Virtual Network:**
   - Inside the Resource Group, click **Add** and search for **Virtual Network**.
   - Name your virtual network (e.g., `AttackSim-VNet`) and select the same region as your resource group.
   - You can leave it as it is, your address space will be created by default (e.g., `10.0.0.0/24`).
   - Click **Review + Create** and then **Create**..

3. **Create a Virtual Machine:**
   - Inside the Resource Group, click **Add** and search for **Virtual Machine**.
   - Click **Create** then select **Azure Virtual Machine**.
   - Select the **Resource Groups** you made.
   - Name your virtual machine (e.g., `GENESYS-NET-1`) and select the same region as your resource group.
   - Choose **Windows 10** as the OS image.  
- Create an **Administrator Account** and tick the **Licensing Box**.  
- Click **Next: Disks** and leave the OS disk size at **127 GiB** (default). 
- Click **Next: Networking**, select the **Virtual Network** created earlier.  
- Tick **Delete public IP and NIC when VM is deleted**.  
- Click **Next: Monitoring** and disable **Boot diagnostics**.  
- Click **Review + Create** → **Create**. 

4. **Create a Network Security Group (NSG):**
   - Inside the **Resource Group**, find and edit the **Network Security Group (NSG)**.  
- Delete the **RDP** rule from **Inbound Security Rules**.  
- Click **Settings** → **Inbound Security Rules** → **Add** Rule. 
   - Set **Source** to **Any**, **Source Port Range** to ***Any***, **Destination** to **Any**, **Destination Port Range** to ***Any***, and **Protocol** to **Any**, Set **Action** to `Allow`
   - Name the rule **'DANGER_AllowAnyCustomAnyInbound'** and **ADD**.
     
### 5. Log into the Virtual Machine  
- Copy the **Public IP Address** of your VM.  
- Open **Remote Desktop Connection** on Windows and enter the copied IP.  
- Click **Connect**, then log in with the **Administrator Username** and Password you created.  
- Once inside the **Windows 10 VM**:  
  - Search **wf.msc** in the Start menu and open it.  
  - Click **Windows Defender Firewall Properties**.  
  - Turn off the firewall for all profiles (Domain, Private, and Public).  
  - Click **Apply** → **OK**. 

### Notes:
- You have now set up a VM that is fully exposed to the internet, including its internal firewall and Azure network firewall.
- This configuration simulates a vulnerable target that can be attacked in a controlled environment for security testing or training purposes.
