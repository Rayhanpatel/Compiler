def count_vowels_and_consonants(file_path):
    vowels = set('aeiouAEIOU')
    no_vowels = 0
    no_consonants = 0

    try:
        with open(file_path, "r") as file:
            text = file.read()
            for char in text:
                if char.isalpha():
                    if char in vowels:
                        no_vowels += 1
                    else:
                        no_consonants += 1

        print(f"No of Vowels = {no_vowels}")
        print(f"No of Consonants = {no_consonants}")

    except FileNotFoundError:
        print(f"File not found: {file_path}")
    except Exception as e:
        print(f"An error occurred: {str(e)}")


count_vowels_and_consonants("file.txt")



