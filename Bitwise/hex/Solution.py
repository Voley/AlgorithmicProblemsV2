
# Problem code
def toHex(num):
    if num == 0:
        return "0"

    map = {10: "a", 11: "b", 12: "c", 13: "d", 14: "e", 15: "f", 16: "h" }

    result = ""

    if num < 0:
        num = num + 2**32

    while num:
        digit = num % 16
        if digit >= 10:
            result = (map[digit]) + result
        else:
            result = (str(digit)) + result
        num //= 16

    return result

# Setup
print("1566 in hex is {value}".format(value = toHex(1566)))
