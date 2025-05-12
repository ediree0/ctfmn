def solve_flag():
    # fl4g string provided
    fl4g = "4202ZH{OOODDIK-yrt_ecin_3k4f_s!_g4lF}"
    
    # RealOrFakeFlag as hex bytes
    real_or_fake_flag_hex = "7c 68 02 02 68 7c 00 3d 7c 39 77 36 3a 22 43 1e 2d 18 33 13 0e 36 5f 2c 6c 2d 15 05 34 1a 4f 38 2f 00 3e 02 00"
    
    # Convert hex string to bytes
    real_or_fake_flag = bytes.fromhex(real_or_fake_flag_hex.replace(" ", ""))
    
    # Create empty list to store the result
    result = []
    
    # XOR each byte to get the original flag
    for i in range(len(real_or_fake_flag)):
        if i < len(fl4g):
            result.append(chr(real_or_fake_flag[i] ^ ord(fl4g[i])))
        else:
            break
    
    # Join the result to get the flag
    return ''.join(result)

# Execute and print the solution
flag = solve_flag()
print(f"{flag}")