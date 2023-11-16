characters = 0
words = 0
lines = 0

with open("file.txt", "r") as file:
    for line in file:
        line = line.strip()
        words += len(line.split())
        characters += len(line)
        lines += 1

print(f"No of Words: {words}")
print(f"No of Characters: {characters}")
print(f"No of Lines: {lines}")
