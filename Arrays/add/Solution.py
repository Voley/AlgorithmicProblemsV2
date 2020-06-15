
# Problem code
def addToArrayForm(A, K):

    result = A[::-1]
    carry = 0
    idx = 0

    while K > 0 or carry > 0:
        digit1 = K % 10
        K //= 10
        digit2 = result[idx] if idx < len(result) else 0

        sum = digit1 + digit2 + carry
        carry = 0
        if sum > 9:
            carry = sum // 10
            sum = sum % 10

        if idx < len(A):
            result[idx] = sum
        else:
            result.append(sum)
        idx += 1

    return result[::-1]
