
# Problem code
def arraysIntersection(arr1, arr2, arr3):
    if not len(arr1) or not len(arr2) or not len(arr3):
        return []

    a, b, c = 0, 0, 0
    result = []
    while a < len(arr1) and b < len(arr2) and c < len(arr3):
        num1 = arr1[a]
        num2 = arr2[b]
        num3 = arr3[c]

        if num1 == num2 and num1 == num3:
            result.append(num1)
            a += 1
            b += 1
            c += 1
        elif num1 <= num2 and num1 <= num3:
            a += 1
        elif num2 <= num1 and num2 <= num3:
            b += 1
        elif num3 <= num1 and num3 <= num2:
            c += 1
    return result
