# Open the file "Simple code.py" for reading
try:
    with open("SimpleCode.py", "r") as file:
        # Define dictionaries to map tokens to their types
        numbers = {'6': 'integer', '8': 'integer'}
        operators = {'=': 'Assignment op', '+': 'Addition op', '-': 'Subtraction op', '/': 'Division op', '*': 'Multiplication op', '<': 'Lessthan op', '>': 'Greaterthan op'}
        data_type = {'int': 'integer type', 'float': 'Floating point', 'char': 'Character type', 'long': 'long int'}
        punctuation_symbol = {':': 'colon', ';': 'semi-colon', '.': 'dot', ',': 'comma'}
        identifier = {'a': 'id', 'b': 'id', 'c': 'id', 'd': 'id', '(': 'id', ')': 'id'}
        keywords = {'if': 'keyword', 'else': 'keyword', 'print': 'keyword', 'for': 'keyword'}

        # Read the content of the file
        lines = file.readlines()

        # Initialize a counter for line numbers
        count = 0

        # Iterate through each line of the program
        for line in lines:
            count += 1

            # Print the line number and the original line of code
            print("line:", count, "\n", line)

            # Split the line into individual tokens based on spaces
            tokens = line.split()

            # Print the tokens found on the line
            print("Tokens are", tokens)

            # Iterate through each token in the line
            for token in tokens:
                # Check if the token matches any keys in the dictionaries
                if token in operators:
                    print("operator is", operators[token])
                elif token in data_type:
                    print("datatype is", data_type[token])
                elif token in punctuation_symbol:
                    print(token, "Punctuation symbol is", punctuation_symbol[token])
                elif token in identifier:
                    print(token, "Identifier is", identifier[token])
                elif token in numbers:
                    print(token, "numbers is", numbers[token])
                elif token in keywords:
                    print(token, "is", keywords[token])

            # Print a separator line
            print(" __________________________________________________________________________________________")

except FileNotFoundError:
    print("File not found: 'SimpleCode.py'")
except Exception as e:
    print(f"An error occurred: {str(e)}")
