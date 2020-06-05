
# Problem code
def sortColors(nums):
    left = 0
    right = len(nums) - 1

    # first move all 2s to end

    while left < right:
        if nums[left] != 2:
            left += 1
        elif nums[right] == 2:
            right -= 1
        else:
            nums[left], nums[right] = nums[right], nums[left]
            right -= 1

    # move all zeroes to start
    left = 0

    while left < right:
        if nums[left] == 0:
            left += 1
        elif nums[right] != 0:
            right -= 1
        else:
            nums[left], nums[right] = nums[right], nums[left]
            right -= 1

# Setup
a = [1, 2, 0, 0, 2, 1, 1, 0]
print("Unsorted array: " + str(a))
sortColors(a)
print("Sorted array: " + str(a))
