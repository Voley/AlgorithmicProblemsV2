

# Problem code
def firstBadVersion(n):
    left = 1
    right = n
    latest = 0

    while left <= right:
        mid = (left + right) // 2
        result = isBadVersion(mid)
        if result:
            latest = mid
            right = mid - 1
        else:
            left = mid + 1
    return latest

def isBadVersion(n):
    return True
