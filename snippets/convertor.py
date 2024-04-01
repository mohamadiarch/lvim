import sys
import pprint
import json

filename = sys.argv[-1]


try:
    f = open(filename, "r")
except Exception:
    raise Exception("file does not exist")


body = []
for line in f:
    content = ""
    for letter in line:
        if letter == "\n":
            continue
        content = content + letter
    body.append(content)


print(json.dumps(body, indent=4))  # multiple line
# print(json.dumps(body))  # one line
# pprint.pprint(json.dumps(body))


# python convertor.py input.txt >> output.txt
