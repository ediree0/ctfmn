## Description

### Stay Consistent

Web · Харуул Занги U18: 2022 · unknown
Solved: 27 · Score: 649
Тууштай байдал амжилтанд хргэнэ

http://139.162.5.230:10325/

## Solution

```python
import requests
from bs4 import BeautifulSoup


def main():
	url = 'http://139.162.5.230:10325'
	session = requests.Session()

	response = session.get(url)
	soup = BeautifulSoup(response.text, 'html.parser')
	id = soup.text.strip().split(" ")[-1]
	
	while True:
		response = session.get(url+id)
		if response.status_code != 200:
			break
		soup = BeautifulSoup(response.text, 'html.parser')
		print(soup.text.strip())
		id = soup.text.strip().split(" ")[-1]

if __name__ == "__main__":
	main()
```

```
hz{yeaa_finally_u_got_it_5020311c58d7fb6f}
```