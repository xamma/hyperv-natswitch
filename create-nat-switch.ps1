# Set your configurations
$SwitchName = "NatSwitch"
$NatNetworkName = "MyNATnetwork"
$NatGatewayIPAddress = "192.168.0.1"
$NatNetworkAddressPrefix = "192.168.0.0/24"

# Create internal Switch
New-VMSwitch -SwitchName $SwitchName -SwitchType Internal

# Get interface index of the created Switch
$ifIndex = (Get-NetAdapter | Where-Object {$_.Name -like "vEthernet ($SwitchName)"}).ifIndex

# Configure NAT-Gateway
New-NetIPAddress -IPAddress $NatGatewayIPAddress -PrefixLength 24 -InterfaceIndex $ifIndex

# Configure NAT-Network
New-NetNat -Name $NatNetworkName -InternalIPInterfaceAddressPrefix $NatNetworkAddressPrefix

Write-Host "Done, created NAT-Network with Switch '$SwitchName'."