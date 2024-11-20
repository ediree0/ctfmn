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
