## Description
Forensics · Харуул Занги U18: 2017 · unknown
Solved: 25 · Score: 700
Зургуудыг ашиглан логик үйлдэл хий.
Flag: HZU18{***}

Files:

image1.png
image2.png

## Solution

XOR ing images is a real thing

```py
from PIL import Image
import numpy as np

# Load the two images
img1 = Image.open("image1.png").convert("RGB")
img2 = Image.open("image2.png").convert("RGB")

# Convert images to numpy arrays
arr1 = np.array(img1)
arr2 = np.array(img2)

# Ensure dimensions match
assert arr1.shape == arr2.shape

# XOR the arrays
xor_result = np.bitwise_xor(arr1, arr2)

# Convert result back to image
result_img = Image.fromarray(xor_result)

# Save and show the result
result_img.save("xor_output.png")
result_img.show()
```
![flag](./xor_output.png)