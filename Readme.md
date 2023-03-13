# Setup a NAT-Switch for Hyper-V
Hyper-V VM's getting different IP's on every reboot.  
To work with these more conveniently, you can create a NAT Switch.  
The instructions can be found here: [Set up a NAT network](https://learn.microsoft.com/en-us/virtualization/hyper-v-on-windows/user-guide/setup-nat-network)  

**Be careful, you can only have one NAT-Switch/NatNetwork**  
If you already have one, delete it with the instructions from the Setup-page.  

## Setup via script
For easier setup, I created a PowerShell-Script.
```powershell
./create-nat-switch.ps1
```
Make sure you have the right execution-policies/run as admin.  