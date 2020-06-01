# Problem code
def threeSum(nums):

    if not nums or len(nums) < 3:
        return []

    nums.sort()
    result = []

    for i in range(0, len(nums) - 2):
        l = i + 1
        r = len(nums) - 1
        if i > 0 and nums[i] == nums[i - 1]:
            continue
        while l < r:
            sum = nums[i] + nums[l] + nums[r]
            if sum == 0:
                result.append([nums[i], nums[l], nums[r]])
                r -= 1
                while l < r and nums[r] == nums[r + 1]:
                    r -= 1
                l += 1
                while l < r and nums[l] == nums[l - 1]:
                    l += 1
            elif sum > 0:
                r -= 1
            else:
                l += 1
    return result

# Setup
a = [2, 0, 0, -2, 5, 4, 1, -3]
print("Initial list: ", a)
print("Tree sum list:")
b = threeSum(a)
print(b)
