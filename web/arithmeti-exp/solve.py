import requests
import hashlib
from bs4 import BeautifulSoup
import re   

def reverse_md5(target):
    for i in range(10000):  # Try numbers from 0 to 9999
        if hashlib.md5(str(i).encode()).hexdigest() == target:
            return i
    raise Exception(f"Hash not found: {target}")

def main():
    url = "http://139.162.5.230:10287/"
    session = requests.Session()  

    r = session.get(url)
    soup = BeautifulSoup(r.text, 'html.parser')
    text = soup.form.text.strip()
    hashes = re.findall(r'[a-f0-9]{32}', text)

    expr = text
    for h in hashes:
        val = reverse_md5(h)
        expr = expr.replace(h, str(val), 1)

    result = eval(expr)

    submit_url = url + "sum"
    response = session.post(submit_url, data={"sum": result})

    print(response.text)

if __name__ == "__main__":
    main()