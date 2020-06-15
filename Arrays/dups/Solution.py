
# Problem code
def findDuplicates(nums):
    result = []
    for i in range(0, len(nums)):
        idx = abs(nums[i]) - 1
        nums[idx] = -nums[idx]
        if nums[idx] > 0:
            result.append(idx + 1)
    return result
