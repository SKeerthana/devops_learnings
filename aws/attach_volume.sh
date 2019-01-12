#Format: 
sudo mkfs -t ext4 /dev/nvmen1

#Add label to volume:
e2label /dev/nvme1n1 hadoop-data

#Put it in fstab:
LABEL=cloudimg-rootfs  / ext4  defaults,discard    0 0 > /etc/fstab

#Mount:
mount /dev/nvmen1 /folder
