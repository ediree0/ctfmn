from PIL import Image
import os

# Configuration
image_folder = "./flag"  # Folder where your images are located
output_image = "combined_image.png"
num_images = 127  # Total number of images
orientation = "vertical"  # Change to "horizontal" if needed

# Load images
images = [Image.open(os.path.join(image_folder, f"cropped_{i}.png")) for i in range(1, num_images + 1)]

# Ensure all images are the same size (resize if needed)
widths, heights = zip(*(img.size for img in images))

if orientation == "vertical":
    total_width = max(widths)
    total_height = sum(heights)
    new_im = Image.new("RGB", (total_width, total_height))
    y_offset = 0
    for im in images:
        new_im.paste(im, (0, y_offset))
        y_offset += im.height
else:
    total_width = sum(widths)
    total_height = max(heights)
    new_im = Image.new("RGB", (total_width, total_height))
    x_offset = 0
    for im in images:
        new_im.paste(im, (x_offset, 0))
        x_offset += im.width

# Save the combined image
new_im.save(output_image)
print(f"Saved combined image as {output_image}")
