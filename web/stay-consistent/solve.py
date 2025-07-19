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