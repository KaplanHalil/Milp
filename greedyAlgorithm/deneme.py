
def is_removed_by_inequality(inequality, pattern):
    """
    Checks if a given pattern is removed by the inequality.

    Parameters:
    inequality (list): Coefficients of the inequality.
    pattern (list): A binary pattern representing impossible patterns.

    Returns:
    bool: True if the inequality removes the pattern, False otherwise.
    """
    lhs = sum(ineq * pat for ineq, pat in zip(inequality[:-1], pattern))  # Compute left-hand side of the inequality
    rhs = -inequality[-1]  # Right-hand side (inequality is of the form Ax + b >= 0, where b = -inequality[-1])
    
    return lhs + rhs >= 0  # Check if the inequality holds


def greedy_reduction_algorithm(H, X):
    """
    Implements the greedy reduction algorithm for reducing the set of inequalities.
    
    Parameters:
    H (list of lists): A list of inequalities, each inequality is a list representing the coefficients of the variables.
    X (list of lists): A list of impossible patterns, each pattern is a list of binary values.

    Returns:
    O (list of lists): A new list of selected inequalities.
    """
    O = []  # Initialize the output list of inequalities

    while X:  # While there are still impossible patterns in X
        # Step 3: Pick the inequality in H that maximizes the number of removed impossible patterns
        best_inequality = None
        max_removed_patterns = 0
        for inequality in H:
            # Check how many patterns the current inequality removes
            removed_patterns = [pattern for pattern in X if is_removed_by_inequality(inequality, pattern)]
            if len(removed_patterns) > max_removed_patterns:
                max_removed_patterns = len(removed_patterns)
                best_inequality = inequality

        if best_inequality:
            O.append(best_inequality)  # Step 4: Add the best inequality to O
            H.remove(best_inequality)  # Step 5: Remove the best inequality from H
            
            # Step 6: Remove the patterns that are impossible under the best inequality
            X = [pattern for pattern in X if not is_removed_by_inequality(best_inequality, pattern)]

    return O  # Step 8: Return the new list of inequalities


if __name__ == "__main__":

    X=[[1, 1, 1, 0, 1, 0, 1, 1, 0, 1],
        [1, 1, 1, 0, 1, 0, 1, 1, 1, 0],
        [1, 1, 1, 0, 1, 1, 0, 0, 0, 0],
        [1, 1, 1, 0, 1, 1, 0, 0, 0, 1],
        [1, 1, 1, 0, 1, 1, 0, 0, 1, 0],
        [1, 1, 1, 0, 1, 1, 0, 0, 1, 1],
        [1, 1, 1, 0, 1, 1, 0, 1, 0, 0],
        [1, 1, 1, 0, 1, 1, 0, 1, 0, 1],
        [1, 1, 1, 1, 0, 0, 0, 0, 0, 0],
        [1, 1, 1, 1, 0, 0, 0, 0, 0, 1],
        [1, 1, 1, 1, 0, 0, 0, 0, 1, 0],
        [1, 1, 1, 1, 0, 0, 0, 0, 1, 1],
        [1, 1, 1, 1, 0, 0, 0, 1, 0, 0],
        [1, 1, 1, 1, 0, 0, 0, 1, 0, 1],
        [1, 1, 1, 1, 0, 0, 0, 1, 1, 0],
        [1, 1, 1, 1, 0, 0, 0, 1, 1, 1],
        [1, 1, 1, 1, 0, 0, 1, 0, 0, 0],
        [1, 1, 1, 1, 0, 0, 1, 0, 0, 1],
        [1, 1, 1, 1, 0, 0, 1, 0, 1, 0],
        [1, 1, 1, 1, 0, 1, 0, 0, 0, 0],
        [1, 1, 1, 1, 0, 1, 0, 0, 0, 1],
        [1, 1, 1, 1, 0, 1, 0, 0, 1, 1]]
    
    H=[[-1, 0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, -1, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, -1, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, -1, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, -1, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, -1, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, -1, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, -1, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, -1, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0, -1],
        [0, 1, 0, 0, 0, 0, -1, 0, 1, 1],
        [-1, 0, 1, 0, 0, 0, 0, 0, 1, 1],
        [1, 0, -1, 0, 0, 0, 0, 0, 1, 1],
        [0, 0, 0, 0, 0, 0, 0, 0, 1, 0],
        [0, 0, 0, 0, 0, 0, 0, 1, 0, 0],
        [0, -1, 0, 0, 1, 0, 0, 1, 1, 0],
        [1, -1, 0, -1, 0, -1, 1, 1, 1, 1],
        [0, 1, 0, 0, -1, 0, 0, 1, 1, 0],
        [2, -2, -1, -2, 1, -1, 1, 1, 2,3],
        [-1, -1, 0, 0, -1, 1, 1, 1, 1, 1],
        [0, -1, -1, -1, 0, 1, 1, 1, 1, 1],
        [-1, 0, 0, -1, -1, 1, 1, 1, 1, 1],
        [1, 2, -2, 0, -2, 1, -2, 1, 3, 2],
        [0, 1, -1, -1, -1, 1, 0, 1, 1, 1]]

    print(greedy_reduction_algorithm(H,X))