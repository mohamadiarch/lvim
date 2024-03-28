
import sys
import pprint
import json

filename = sys.argv[-1]


try:
    f = open(filename, 'r')
except :
    print("file not exit")


body = []
for line in f:
    content = ""
    for letter in line:
        content = content + letter
    body.append(content)


print(json.dumps(body))
# pprint.pprint(json.dumps(body))


# python convertor.py input.txt >> output.txt