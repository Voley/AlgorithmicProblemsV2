
# Problem code
def intervalIntersection(A, B):
    if len(A) == 0 or len(B) == 0:
        return []
    idx1 = 0
    idx2 = 0
    result = []
    while idx1 < len(A) and idx2 < len(B):
        a = A[idx1]
        b = B[idx2]
        intersect = intersection(a, b)
        if intersect:
            result.append(intersect)
        if a[1] < b[1]:
            idx1 += 1
        else:
            idx2 += 1
    return result

def intersection(a, b):
    start = max(a[0], b[0])
    end = min(a[1], b[1])

    if start <= end:
        return [start, end]
    return None
