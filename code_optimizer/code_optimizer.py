import re

def constant_folding(code):
    lines = code.split('\n')
    optimized_lines = []

    for line in lines:
        match = re.match(r'\s*(\w+)\s*=\s*(\d+)\s*([+\-/])\s(\d+)\s*', line)
        if match:
            variable, operand1, operator, operand2 = match.groups()
            result = eval(f'{operand1} {operator} {operand2}')
            optimized_lines.append(f'{variable} = {result}')
        else:
            optimized_lines.append(line)

    return '\n'.join(optimized_lines)

# Example input code
input_code = """
x = 5 + 3
y = x * 2
z = 10 / 2
"""

# Perform constant folding optimization
optimized_code = constant_folding(input_code)

# Print the original and optimized code
print("Original Code:")
print(input_code)
print("\nOptimized Code:")
print(optimized_code)