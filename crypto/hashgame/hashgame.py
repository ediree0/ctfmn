from Crypto.Hash import MD2, SHA1, MD5
import itertools

def compute_hash(candidate):
    sha1_hash = SHA1.new(candidate.encode()).digest()  
    md2_hash = MD2.new(sha1_hash.hex().encode()).digest() 
    md5_hash = MD5.new(md2_hash.hex().encode()).hexdigest() 
    return md5_hash

def main():
    target_hash = "bb492f0bba8386efcd6aa0ac461b597e"
    with open('wordlist.txt','r') as wordlist:
        lines = wordlist.readlines()
    
    for line in lines:
        if compute_hash(line) == target_hash:
            print(f"Found the flag: HZ2024{{{candidate}}}")
            break

if __name__ == '__main__':
    main()