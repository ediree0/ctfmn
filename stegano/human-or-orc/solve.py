import qrcode
from PIL import Image

# Binary sequence provided
binary_sequence = "01001000010110100101010100110001001110000111101101001010011101010111001101110100010111110101001001100101011100000110110001100001011000110110010101111101"

# Convert binary sequence to a string of ASCII characters if possible
# Split binary sequence into 8-bit chunks (1 byte = 8 bits)
binary_bytes = [binary_sequence[i:i+8] for i in range(0, len(binary_sequence), 8)]
decoded_text = ''.join([chr(int(byte, 2)) for byte in binary_bytes])

# Create a QR code from the decoded text
qr = qrcode.QRCode(version=1, error_correction=qrcode.constants.ERROR_CORRECT_L, box_size=10, border=4)
qr.add_data(decoded_text)
qr.make(fit=True)

# Generate and display the QR code
qr_image = qr.make_image(fill_color="black", back_color="white")
qr_image.show()
