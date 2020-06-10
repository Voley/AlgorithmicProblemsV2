
# Problem code
def containsDuplicate(nums):
    s = set()
    for item in nums:
        if item in s:
            return True
        s.add(item)
    return False
