#!/usr/bin/env python3
 
body_n = ['13841','39200','55429','56104','68221','72801','72869','76739','78248','97543']
header = "67778"
footer = "20734"

header_data = open(header, "rb").read()
footer_data = open(footer, "rb").read()

with open ('test','wb') as final: 
    final.write(header_data)
    for item in body_n:
        d = open(item, "rb").read()
        final.write(d)
    final.write(footer_data)
    final.close()
