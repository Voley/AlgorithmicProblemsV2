
# Problem code
def removeDuplicates(nums):
    if len(nums) < 2:
        return len(nums)

    reader = 1
    writer = 0
    count = 1

    while reader < len(nums):
        if nums[reader] != nums[writer]:
            writer += 1
            nums[writer] = nums[reader]
            count += 1
        reader += 1
    return count

# Setup
a = [0,0,1,1,1,2,2,3,3,4]
removeDuplicates(a)
print("Array without duplicates: " + str(a))
