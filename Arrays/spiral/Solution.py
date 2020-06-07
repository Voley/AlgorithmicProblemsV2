
# Problem code
def generateMatrix(n):
    count = 1
    matrix = []
    for i in range(n):
        matrix.append([])
        for j in range(n):
            matrix[i].append(-1)
    top, left, right, bottom = 0, 0, n - 1, n - 1

    while top <= bottom and left <= right:

        # left to right
        for col in range(left, right + 1):
            matrix[top][col] = count
            count += 1
        top += 1


        # top to bottom

        for row in range(top, bottom + 1):
            matrix[row][right] = count
            count += 1
        right -= 1

        # right to left

        for col in range(right, left - 1, -1):
            matrix[bottom][col] = count
            count += 1
        bottom -= 1

        # bottom to top

        for row in range(bottom, top - 1, -1):
            matrix[row][left] = count
            count += 1
        left += 1

    return matrix

# Setup
print("Generating matrix size 4:")
print(generateMatrix(4))
