from math import sqrt

# Problem code
def countPrimes(n: int) -> int:
    if n < 3:
        return 0

    sieve = [True] * (n)
    ceil = int(sqrt(n)) + 1
    sieve[0] = False
    sieve[1] = False

    for i in range(2, ceil):
        for j in range(i, n, i):
            if i == j:
                continue
            sieve[j] = False

    counter = 0
    for val in sieve:
        counter += 1 if val is True else 0
    return counter

# Setup
a = 20
print("Number of primes below 20:")
b = countPrimes(a)
print(b)
