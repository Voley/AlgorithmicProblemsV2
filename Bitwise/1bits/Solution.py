# Problem code
def hammingWeight(n):
    count = 0
    while n:
        count += n & 1
        n >>= 1
    return count

# Setup
a = 23
print("Number of set bits in 23:")
b = hammingWeight(a)
print(b)
