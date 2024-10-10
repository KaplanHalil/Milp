# Polyhedron çıktısını 2 boyutlu listeye dönüştüren kod.

import re

# The input text
text = """
An inequality (-1, 0, 0, 0, 0, 0, 0, 0, 0, 0) x + 1 >= 0
An inequality (0, -1, 0, 0, 0, 0, 0, 0, 0, 0) x + 1 >= 0
An inequality (0, 0, -1, 0, 0, 0, 0, 0, 0, 0) x + 1 >= 0
An inequality (0, 0, 0, -1, 0, 0, 0, 0, 0, 0) x + 1 >= 0
An inequality (0, 0, 0, 0, -1, 0, 0, 0, 0, 0) x + 1 >= 0
An inequality (0, 0, 0, 0, 0, -1, 0, 0, 0, 0) x + 1 >= 0
An inequality (0, 0, 0, 0, 0, 0, -1, 0, 0, 0) x + 1 >= 0
An inequality (0, 0, 0, 0, 0, 0, 0, -1, 0, 0) x + 1 >= 0
An inequality (0, 0, 0, 0, 0, 0, 0, 0, -1, 0) x + 1 >= 0
An inequality (0, 0, 0, 0, 0, 0, 0, 0, 0, -1) x + 1 >= 0
An inequality (0, 1, 0, 0, 0, 0, -1, 0, 1, 1) x + 0 >= 0
An inequality (-1, 0, 1, 0, 0, 0, 0, 0, 1, 1) x + 0 >= 0
An inequality (1, 0, -1, 0, 0, 0, 0, 0, 1, 1) x + 0 >= 0
An inequality (0, 0, 0, 0, 0, 0, 0, 0, 1, 0) x + 0 >= 0
An inequality (0, 0, 0, 0, 0, 0, 0, 1, 0, 0) x + 0 >= 0
An inequality (0, -1, 0, 0, 1, 0, 0, 1, 1, 0) x + 0 >= 0
An inequality (1, -1, 0, -1, 0, -1, 1, 1, 1, 1) x + 1 >= 0
An inequality (0, 1, 0, 0, -1, 0, 0, 1, 1, 0) x + 0 >= 0
An inequality (2, -2, -1, -2, 1, -1, 1, 1, 2, 3) x + 2 >= 0
An inequality (-1, -1, 0, 0, -1, 1, 1, 1, 1, 1) x + 1 >= 0
An inequality (0, -1, -1, -1, 0, 1, 1, 1, 1, 1) x + 1 >= 0
An inequality (-1, 0, 0, -1, -1, 1, 1, 1, 1, 1) x + 1 >= 0
An inequality (1, 2, -2, 0, -2, 1, -2, 1, 3, 2) x + 2 >= 0
An inequality (0, 1, -1, -1, -1, 1, 0, 1, 1, 1) x + 1 >= 0
"""

# Use regular expression to extract the coefficients
coefficients = re.findall(r'\((-?\d+, ?-?\d+, ?-?\d+, ?-?\d+, ?-?\d+, ?-?\d+, ?-?\d+, ?-?\d+, ?-?\d+, ?-?\d+)\)', text)

# Convert the coefficients to a list of lists (2D list)
coeff_matrix = [list(map(int, coeff.strip().split(','))) for coeff in coefficients]

# Print the resulting coefficient matrix
for row in coeff_matrix:
    print(row)
