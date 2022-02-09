#!/usr/bin/env python3

import re
import os
import sys

text = sys.stdin.read()
for char in text:
    bolded = re.sub(r'((.. *)+)', "<b>\g<1></b>", text)
    clean_string = re.sub(r'(.).', "\g<1>", bolded)
print("<pre>")
print(clean_string)
print("</pre>")
