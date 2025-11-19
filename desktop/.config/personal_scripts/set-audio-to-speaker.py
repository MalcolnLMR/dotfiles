#!/usr/bin/env python

import subprocess, os

search_speaker= "pw-cli i alsa_output.pci-0000_08_00.6.analog-stereo | grep -oP 'id: \\K\\w+'"

result = subprocess.check_output(search_speaker, shell = True, executable = "/bin/bash", stderr = subprocess.STDOUT)
speaker_id = result.decode()

change_to_speaker = "wpctl set-default {}".format(speaker_id)
os.system(change_to_speaker)

