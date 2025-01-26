def extract_special_chars(file_path):
    special_chars = ['-', '.']
    extracted_chars = []

    # Open the file in read mode
    with open(file_path, 'r') as file:
        # Read the file content
        content = file.read()
        
        # Loop through each character and check if it's '-' or '.'
        for char in content:
            if char in special_chars:
                extracted_chars.append(char)
    
    # Return the list of extracted characters
    return extracted_chars

# Example usage
file_path = 'challenge.txt'  # Replace with the path to your file
extracted_chars = extract_special_chars(file_path)
print("Extracted characters:", ''.join(extracted_chars))
