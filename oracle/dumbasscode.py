import re

# Input message
message = "encrypted message : 9a016b9a2eed914b531a97f8a81240f66205e4054964f666df7e8ed67ce4794fa85e8a1e0d16fc3a51f8b13fb89658f8\ngive me message : You should give any string !!!"

# Regular expression pattern to extract the gibberish part
pattern = r'encrypted message : ([a-f0-9]+)'

# Find the gibberish part using regex
match = re.search(pattern, message)

if match:
    gibberish = match.group(1)
    print(gibberish)
    print("test")
else:
    print("No gibberish found.")