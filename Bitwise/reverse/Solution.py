
# Problem code
def reverse(x: int) -> int:
    if x == 0:
        return x
    if x > pow(2, 31) - 1 or x < -pow(2, 31):
        return 0

    negative = x < 0
    x = abs(x)
    result = 0
    while x:
        temp = x % 10
        x //= 10
        result *= 10
        result += temp

    if result > pow(2, 31) - 1 or result < -pow(2, 31):
        return 0

    return result if not negative else -abs(result)

# Setup
print("123456 reversed is:")
a = reverse(123456)
print(a)
