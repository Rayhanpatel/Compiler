str_value = "hello"  # Initialize the string

# 1. Function to calculate the length of a string
def length(input_str):
    return len(input_str)

# 2. Function to concatenate the string with " world"
def concat(input_str):
    return input_str + " world"

# 3. Function to find the character at a specified index
def index(input_str, i):
    if i < len(input_str):
        return input_str[i]
    else:
        return "Index out of range"

# 4. Function to reverse the string
def reverse(input_str):
    return input_str[::-1]

# 5. Function to convert the string to uppercase
def uppercase(input_str):
    return input_str.upper()

# 6. Function to convert the string to lowercase
def lowercase(input_str):
    return input_str.lower()

# 7. Function to split the string into words
def split_str(input_str):
    return input_str.split()

# 8. Function to check if a string ends with a specified suffix
def custom_endswith(string, suffix):
    return string.endswith(suffix)

# 9. Function to check if a string is alphanumeric
def custom_isalnum(input_str):
    return input_str.isalnum()

# 10. Function to check if a string contains only alphabetic characters
def custom_isalpha(input_str):
    return input_str.isalpha()

# Function calls
print("1. Length of the string:", length(str_value))
print("2. Concatenated string:", concat(str_value))
index_input = int(input("3. Enter the index: "))
print(f"Character at index {index_input}: {index(str_value, index_input)}")
print("4. Reversed string:", reverse(str_value))
print("5. Uppercase:", uppercase(str_value))
print("6. Lowercase:", lowercase(str_value))
print("7. Split string:", split_str(str_value))
print("8. Custom endswith:", custom_endswith("Hello, world!", "world!"))
print("9. Custom isalnum:", custom_isalnum(str_value))
print("10. Custom isalpha:", custom_isalpha(str_value))
