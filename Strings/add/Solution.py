
# Problem code
def addStrings(num1, num2):
    if not len(num1):
        return num1
    if not len(num2):
        return num2

    idx1 = len(num1) - 1
    idx2 = len(num2) - 1

    result = []
    carry = 0

    while idx1 >= 0 or idx2 >= 0 or carry > 0:
        a = num1[idx1] if idx1 >= 0 else "0"
        b = num2[idx2] if idx2 >= 0 else "0"

        temp = int(a) + int(b) + carry
        carry = 0

        if temp > 9:
            carry = temp // 10
            temp = temp - 10

        result.append(str(temp))

        idx1 -= 1
        idx2 -= 1

    result = ''.join(result[::-1])

    return result if len(result) > 0 else "0"
