
# Problem code
def reverseBits(n: int) -> int:
    result = 0
    for i in range(0, 32):
        next = n & 1
        result <<= 1
        result += next
        n >>= 1

    return result

# Setup
print("123456 reversed bits is:")
a = reverseBits(12345678)
print(a)
