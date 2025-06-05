from pwn import *

# Set up LCG parameters
a = 4332
b = 322
n = 1812433253
seed = 3213921

# Predict 5 LCG outputs
def generate_predictions(seed, count=5):
    predictions = []
    state = seed
    for _ in range(count):
        state = (state * a + b) % n
        predictions.append(state)
    return predictions

# Replace with the actual host and port
HOST = '139.59.230.119'
PORT = 10322

# Generate numbers
predicted_values = generate_predictions(seed)

# Set context for pwntools (optional)
context.log_level = 'info'  # Change to 'debug' to see all communication

# Connect to remote challenge
conn = remote(HOST, PORT)

# Interact and send predictions
for value in predicted_values:
    conn.recvuntil(b'?')  # Wait for the "What number did I guess?" message
    conn.sendline(str(value).encode())

# Receive final message with flag
final_response = conn.recvall()
print(final_response.decode(errors='ignore'))
