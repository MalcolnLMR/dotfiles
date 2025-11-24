#!/usr/bin/env python

import subprocess, os

# search = "pw-cli i alsa_input.usb-Logitech_G733_Gaming_Headset-00.mono-fallback | grep -oP 'id: \\K\\w+'"
# result = subprocess.check_output(search, shell = True, executable = "/bin/bash", stderr = subprocess.STDOUT)
# mic_id = result.decode().strip()
mic_id = "@DEFAULT_AUDIO_SOURCE@"
os.system("eww open muted_icon --toggle && wpctl set-mute "+mic_id+" toggle")
