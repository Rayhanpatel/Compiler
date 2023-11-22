a = input("Enter a string: ")
b = input("Enter a string: ")


#1. Printing lengths of strings
count1 = 0
count2 = 0
for i in a:
    count1 = count1+1

for j in b:
    count2 =  count2+1
print("Length of ", a ," is: ", count1)
print("Length of ", b ," is: ", count2)


#2. Printing largest string
if(count1>count2):
    print("Largest String is: ")
    print(a)
else:
    print(b)


#3. Concatenation 
res_conc = ""
for char in a:
    res_conc = res_conc+char
for char in b:
    res_conc = res_conc+char
print(res_conc)


#4. Reversing the string
revs = ""
for char in a:
    revs = char+revs
print("Reverse of ", a ," is: ", revs)


# 5. Uppercase Conversion
uppercase_string = ""
for char in a:
    if 'a' <= char <= 'z':
        uppercase_string += chr(ord(char) - 32)
    else:
        uppercase_string += char
print("Uppercase:", uppercase_string)


# 6. Lowercase Conversion
lowercase_string = ""
for char in b:
    if 'A' <= char <= 'Z':
        lowercase_string += chr(ord(char) + 32)
    else:
        lowercase_string += char
print("Lowercase:", lowercase_string)


# 7. Checking Palindrome
is_palindrome = True
for i in range(count1 // 2):
    if a[i] != a[count1 - 1 - i]:
        is_palindrome = False
        break
print("Palindrome:", is_palindrome)


# 8. Extracting Substring
string = "Hello, world!"
start_index = 7
end_index = 12
substring = ""
for i in range(start_index, end_index):
    substring += string[i]
print("Substring:", substring)


# 9. Removing Spaces
string = " Hello, world! "
no_spaces = ""
for char in string:
    if char != ' ':
        no_spaces += char
print("No Spaces:", no_spaces)


# 10. Counting Words
string = "Hello, world! Welcome to Python programming."
word_count = 1
for char in string:
    if char == ' ':
        word_count += 1
print("Word Count:", word_count)