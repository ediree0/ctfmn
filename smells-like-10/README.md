# Smells Like 10 Spirit Writeup

We where given the encrypting script and the ciphertext we simply reverse the encrypting function and create our own decrypt function

```python
import base64
import codecs
spirit = 'HZU18{XXXXXXXXXXXXXXXXXX}'
def spirit_spinner():
    global spirit
    for floor in range(5):
            spirit = codecs.encode(spirit, 'rot_13')
            spirit = base64.b64encode(spirit.encode()).decode()
    return {"ciphertext": spirit}
print(spirit_spinner())

def decrypt(ciphertext):
    print("goodluck!")
```

and here is my decrypt script :)

```python
import base64
import codecs

spirit = 'RUt1MVpUNGpyR0laWkh5ZUVHQUdGMEkzSDJjbkYwODBwUnVPbnliakFKTVNyVVNZb3pTS0FIRVhGSUVpRlNBWXBSZ3ZaSFNWSTFNbkZKQWZweGdHQVJJSFpKNWhyUlNGRDBwakNEPT0='

def spirit_spinner():
    global spirit
    for floor in range(5):
        spirit = codecs.encode(spirit, 'rot_13')
        spirit = base64.b64encode(spirit.encode()).decode()
    return {"ciphertext": spirit}

def decrypt():
    global spirit 
    for floor in range(5):
        spirit = base64.b64decode(spirit.encode()).decode()
        spirit = codecs.decode(spirit, 'rot_13')
    return spirit

def main():
    print(decrypt())

if __name__ == '__main__':
    main()

``` 