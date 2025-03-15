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
   - Select the **Windows 10** as your desired image.
   - Create an Administrator Account
   - Tick the the Licensing Box.
   - Click **Next: Disks**.
   - You can leave the OS disk size as the default 127 GIB.
   - Click **Next: Networking**
   - For virtual network select the network you made earlier.
   - Tick the **Delete public IP and NIC when VM is deleted**.
   - in **Next: Monitoring** diable the **Boot diagnostics**.
   - Click **Review + Create** and then **Create**..

4. **Log into the Virtual Machine:**
   - After the VM is deployed, log into it via **RDP** (for Windows) or **SSH** (for Linux).
   - Turn off the firewall inside the virtual machine (for Windows: `netsh advfirewall set allprofiles state off`; for Linux: `sudo ufw disable`).
   - This makes the VM more enticing to attackers on the public internet.

5. **Create a Network Security Group (NSG):**
   - Inside your Resource Group, click **Add** and search for **Network Security Group**.
   - Name your NSG (e.g., `AttackSim-NSG`) and click **Review + Create**.
   - Once created, go to **Inbound Security Rules** and click **Add**.
     - Set **Source** to **Any**, **Source Port Range** to ***Any***, **Destination** to **Any**, **Destination Port Range** to ***Any***, and **Protocol** to **Any**.
     - Allow all traffic by setting **Action** to **Allow**.

6. **Attach the NSG to the Virtual Machine:**
   - Go to the **Networking** tab of your VM.
   - Under **Network Interface**, find the network interface connected to the virtual machine.
   - In the **Network Interface** settings, attach the newly created **NSG** (`AttackSim-NSG`).

### Notes:
- You have now set up a VM that is fully exposed to the internet, including its internal firewall and Azure network firewall.
- This configuration simulates a vulnerable target that can be attacked in a controlled environment for security testing or training purposes.
