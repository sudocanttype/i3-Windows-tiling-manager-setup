#!/bin/bash
modprobe vfio-pci

gpu="0000:0a:00.0"
aud="0000:0a:00.1"
gpu_vd="$(cat /sys/bus/pci/devices/$gpu/vendor) $(cat /sys/bus/pci/devices/$gpu/device)"
aud_vd="$(cat /sys/bus/pci/devices/$aud/vendor) $(cat /sys/bus/pci/devices/$aud/device)"

echo "$gpu" > "/sys/bus/pci/devices/$gpu/driver/unbind"
echo "$aud" > "/sys/bus/pci/devices/$aud/driver/unbind"
echo "$gpu_vd" > /sys/bus/pci/drivers/virtio-pci/new_id
echo "$aud_vd" > /sys/bus/pci/drivers/vfio-pci/new_id

#
