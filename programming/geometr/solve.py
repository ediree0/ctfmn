def is_geometric_progression(seq):
    if len(seq) < 2 or seq[0] == 0:  # 0-ээр эхэлсэн тохиолдолд GP биш гэж үзнэ
        return False, None
    
    r = seq[1] / seq[0]  # Эхний хоёр элементийн харьцааг тодорхойлох
    for i in range(1, len(seq)):
        if seq[i - 1] == 0 or seq[i] / seq[i - 1] != r:
            return False, None
    return True, int(r)  # Харьцааг бүхэл тоо болгож буцаана

def process_file(filename):
    results = []
    with open(filename, 'r') as f:
        for line in f:
            numbers = [int(x) for x in line.split() if x.lstrip('-').isdigit()]  # Сөрөг тоонуудыг зөв оруулах
            if len(numbers) >= 2:
                is_gp, ratio = is_geometric_progression(numbers)
                if is_gp:
                    results.append(ratio)
    
    if not results:
        return "HZU18{1}"  # Хэрэв GP олдоогүй бол үржвэр 1 байх ёстой

    product = ""
    for num in results:
        product += str(num)

    return f"HZU18{{{product}}}"

# Файл нэрээ энд оруулна уу
filename = "input.txt"
print(process_file(filename))
