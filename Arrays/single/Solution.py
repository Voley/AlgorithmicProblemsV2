
# Problem code
def singleNumber(nums):
    result = 0
    for num in nums:
        result ^= num
    return result
