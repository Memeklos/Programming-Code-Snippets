# VM Creation #
## This script creates a VM on the specified server ##

# Connecting to the server
Connect-VIServer -Server 192.168.1.10 -Protocol https -User root -Password Password1! -Force
#Connect-VIServer 192.168.1.10

# Uploading the Ubuntu ISO
$ds = Get-Datastore datastore1
New-PSDrive -Name ds1 -PSProvider ViMdatastore -Root '\' -location $ds
Copy-DatastoreItem C:\Users\DSU\Desktop\ubuntu-20.04.2.0-desktop-amd64.iso -Destination ds1:\ubuntu.iso

# Creating the VM
$ubu = New-VM -Name UbU -Datastore Datastore1 -DiskGB 20 -DiskStorageFormat Thin -MemoryGB 4 -CD -GuestId UbuntuGuest -NumCpu 2
$cd = New-CDDrive -VM $ubu -IsoPath "[datastore1] cds/ubuntu.iso"
Start-VM $ubu

# Creating a snapshot
New-Snapshot -VM $ubu -Name "AfterUpdate"
