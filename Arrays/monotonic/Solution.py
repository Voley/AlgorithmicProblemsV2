
# Problem code
def isMonotonic(A):
    if len(A) <= 2:
        return True
    mode = 0 # 1 - increasing, 2 - decreasing
    prev = A[0]
    for i in range(1, len(A)):
        if mode == 0:
            if prev > A[i]:
                mode = 2
            elif prev < A[i]:
                mode = 1

        if mode == 1:
            if prev > A[i]:
                return False

        if mode == 2:
            if prev < A[i]:
                return False

        prev = A[i]

    return True
