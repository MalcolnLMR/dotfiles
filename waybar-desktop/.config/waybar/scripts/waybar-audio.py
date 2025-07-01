#!/usr/bin/env python

import json
import requests
from datetime import datetime

data = {}
data['text'] = "{icon}  {volume}% "
data['tooltip'] = "test"

print(json.dumps(data))
