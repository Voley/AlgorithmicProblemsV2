
# Problem code
def maxSubArray(nums):
    if len(nums) == 1:
        return nums[0]

    prev = nums[0]
    maximum = nums[0]

    for i in range(1, len(nums)):
        prev = max(nums[i], prev + nums[i])
        maximum = max(prev, maximum)

    return maximum
