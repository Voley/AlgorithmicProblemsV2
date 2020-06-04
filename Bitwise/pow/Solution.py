# Problem code
def myPow(x, n):
    if not n:
        return 1
    if n < 0:
        return 1 / myPow(x, -n)
    if n % 2:
        return x * myPow(x, n-1)
    return myPow(x*x, n/2)

# Setup
print("2 in power 11 is:")
a = myPow(2, 11)
print(a)
