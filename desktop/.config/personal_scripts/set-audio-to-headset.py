#!/usr/bin/env python

import subprocess, os

search_headset = "pw-cli i alsa_output.usb-Logitech_G733_Gaming_Headset-00.iec958-stereo | grep -oP 'id: \\K\\w+'"

result = subprocess.check_output(search_headset, shell = True, executable = "/bin/bash", stderr = subprocess.STDOUT)
headset_id = result.decode()

change_to_headset = "wpctl set-default {}".format(headset_id)
os.system(change_to_headset)
