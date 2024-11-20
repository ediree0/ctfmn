with open("numbers.log", "r") as file:
    lines = file.readlines()

for line in lines:
    parts = line.split("GET /")
    if len(parts) > 1: 
        char = parts[1][0]  
        print(ord(char))
