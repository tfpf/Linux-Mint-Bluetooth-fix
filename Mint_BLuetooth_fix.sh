#!/bin/bash

# get this file: BCM43142A0-0a5c-21d7.hcd
# or this file: fw-0a5c_21d7.hcd
# they are both the same, but named differently
# I got from here: https://github.com/winterheart/broadcom-bt-firmware/blob/master/brcm/BCM43142A0-0a5c-21d7.hcd

# reload module
modprobe -r btusb
modprobe btusb

# check whether module could be loaded successfully
# if loading failed, it will mention where the HCF file should have been located
dmesg | tail

# example of failed output:
#	[218656.243156] bluetooth hci0: Direct firmware load for brcm/BCM.hcd failed with error -2
#	[218656.243161] Bluetooth: hci0: BCM: Patch brcm/BCM.hcd not found
# copy the HCD file to the required location (and rename it): /lib/firmware/brcm/BCM.hcd
# then reload the module again
