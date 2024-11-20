# Brainteaser Writeup

challenge discription was what is this ???
looked some what like base64 but not base64. Then i started to notice +-<>[]. symbols scattered all around which is brainfuck code's back bone. So wrote a lil script to extract all these symbols

```python
def main():
	a = "The text goes here :)"

	output = ""

	for i in a:
		if i in ['+', '-', '[', ']', '>', '<', '.']:
			output += i

	print(output)

if __name__ == "__main__":
	main()
```

```output
+++++++++[->+++++++++<]>++++++++++++++++++..<++++[->++++<]>.<++++++[->------<]>------------.<++++[->++++<]>+.<+++[->---<]>-----.<+++++++[->+++++++<]>++++.<++++++[->------<]>----------.<+++++[->-----<]>---.<+++++++[->+++++++<]>++++++++++++.<+++[->---<]>-.-----.+++.<+++[->+++<]>+.<+++++++[->-------<]>-----------.<++++++++[->++++++++<]>+++++++.---------.<+++[->+++<]>++++++.<
```

From this out put we put it in a brainfuck decoder and we get the flag

```
ccsCTF{M1nd_bl0wn}
```