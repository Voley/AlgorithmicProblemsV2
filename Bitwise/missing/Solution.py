
# Problem code
def missingNumber(nums):
    res = len(nums)
    for i in range(0, len(nums)):
        res ^= i
        res ^= nums[i]
    return res
