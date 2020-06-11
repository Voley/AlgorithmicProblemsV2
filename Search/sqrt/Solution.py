
# Problem code
def mySqrt(x):
    left = 1
    right = x
    while left <= right:
        mid = (right + left) // 2
        if x >= mid * mid and x < (mid + 1) * (mid + 1):
            return mid
        elif mid * mid > x:
            right = mid - 1
        else:
            left = mid + 1
    return 0
