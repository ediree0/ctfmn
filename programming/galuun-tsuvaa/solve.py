def is_fibonacci_sequence(seq):
    if len(seq) < 3:  # Фибоначчийн нөхцөлд 3-аас бага тоотой байх боломжгүй
        return False
    for i in range(2, len(seq)):
        if seq[i] != seq[i - 1] + seq[i - 2]:
            return False
    return True


def main():
	first_elements = []
	with open("input.txt","r") as file:
		for line in file:
			numbers = [int(x) for x in line.split() if x.lstrip('-').isdigit()]
			if len(numbers) >= 3 and is_fibonacci_sequence(numbers):
				first_elements.append(str(numbers[0]))
	file.close()

	print(f"HZU18{{{''.join(first_elements)}}}")

if __name__ == '__main__':
	main()