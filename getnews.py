import requests
import re

r = requests.get("https://dsu.edu/news")

news = re.findall(">([^<]+)</a></h2>", r.text)

for n in news:
	n = n.encode("ascii", "ignore")
	print n
