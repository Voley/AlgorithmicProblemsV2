
# Problem code
def plusOne(digits):
    digit = len(digits) - 1
    carry = 1
    result = []

    while digit >= 0 or carry > 0:
        cur = 0
        if digit >= 0:
            cur += digits[digit]
        cur += carry
        carry = 1 if cur > 9 else 0
        cur = cur % 10
        result.append(cur)
        digit -= 1

    return result[::-1]

# Setup

a = [1, 9, 9]
print("Adding 1 to " + str(a))
b = plusOne(a)
print(b)
