#!/bin/bash
echo $(($(cat /sys/bus/pci/drivers/k8temp/0000\:00\:18.3/temp1_input) / 1000))
