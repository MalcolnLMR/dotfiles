#!/usr/bin/env python

import json
import subprocess, os

search_headset = "pw-cli i alsa_output.usb-Logitech_G733_Gaming_Headset-00.iec958-stereo | grep -oP 'id: \\K\\w+'"
search_speaker= "pw-cli i alsa_output.pci-0000_06_00.6.analog-stereo | grep -oP 'id: \\K\\w+'"
search_actual_id= "wpctl inspect @DEFAULT_AUDIO_SINK@ | grep -oP 'id \\K\\w+'"


result = subprocess.check_output(search_headset, shell = True, executable = "/bin/bash", stderr = subprocess.STDOUT)
headset_id = result.decode()

result = subprocess.check_output(search_speaker, shell = True, executable = "/bin/bash", stderr = subprocess.STDOUT)
speaker_id = result.decode()

result = subprocess.check_output(search_actual_id, shell = True, executable = "/bin/bash", stderr = subprocess.STDOUT)
actual_id = result.decode()

data = {}

if (actual_id == headset_id):
    change_to_speaker = "wpctl set-default {}".format(speaker_id)
    os.system(change_to_speaker)
    data['text'] = "󰓃"
else:
    change_to_headset = "wpctl set-default {}".format(headset_id)
    os.system(change_to_headset)
    data['text'] = ""    

print(json.dumps(data))
