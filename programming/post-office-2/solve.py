#!/usr/bin/env python3
# solve_ctf.py
# Requires: pwntools (`pip install pwntools`)
# Usage: python3 solve_ctf.py
# If you want to target a different host/port, change HOST and PORT below or pass env vars.

from pwn import remote, context
import sys

# remote target - change to the host/port you were given
HOST = "139.162.5.230"   # <-- replace
PORT = 10327            # <-- replace

# The upper bound given in the prompt (copied exactly as decimal)
UPPER = int("1340780792994259709957402499820584612747936582059239337772356144372176403007354"
            "6976801874298166903427690031858186486050853753882811946569946433649006084096")

LOWER = 1

# Mongolian response snippets (from your description)
TOO_BIG = "Хэтрээд явчихав уу"   # too large
TOO_SMALL = "Арай наана уу"      # too small

# Prompt to wait for before sending a guess
PROMPT = "Хайрцагны дугаар:"

# configuration
context.log_level = "info"
MAX_GUESSES = 512

def main():
    try:
        print(f"[+] Connecting to {HOST}:{PORT} ...")
        r = remote(HOST, PORT, timeout=10)

        # read initial text until prompt
        data = r.recvuntil(PROMPT.encode('utf-8'), timeout=10)
        print(data.decode('utf-8', errors='ignore'))

        low = LOWER
        high = UPPER

        for attempt in range(1, MAX_GUESSES + 1):
            mid = (low + high) // 2
            guess_str = str(mid)
            print(f"{guess_str}")
            r.sendline(guess_str.encode('utf-8'))

            # read response (server may print a prompt again or final message)
            # read a chunk and decode
            # we will read until either the prompt or a newline; keep it flexible
            resp = r.recvline(timeout=10)
            if not resp:
                # maybe the server sent more text, try to recv some bytes
                try:
                    resp = r.recv(timeout=2)
                except Exception:
                    resp = b""

            resp_text = resp.decode('utf-8', errors='ignore').strip()

            # If server returns direct success/flag text (not the two hints), break and show
            if TOO_BIG in resp_text:
                # guess was too large
                high = mid - 1
                continue
            elif TOO_SMALL in resp_text:
                # guess was too small
                low = mid + 1
                continue
            else:
                # If it's neither response, it might be the success case (flag or congrats)
                # Print what we got, then switch to interactive to receive remainder.
                print(resp_text)
                print("[+] Received unexpected / success response; switching to interactive.")
                # print any remaining data
                try:
                    rest = r.recv(timeout=1)
                    if rest:
                        print(rest.decode('utf-8', errors='ignore'))
                except Exception:
                    pass
                r.interactive()
                return

        print("[-] Reached max guesses without explicit success. Dropping to interactive to inspect.")
        r.interactive()

    except KeyboardInterrupt:
        print("\n[!] Interrupted by user.")
        try:
            r.close()
        except:
            pass
        sys.exit(1)
    except Exception as e:
        print(f"[!] Exception: {e}")
        try:
            r.close()
        except:
            pass
        sys.exit(1)

if __name__ == "__main__":
    main()
