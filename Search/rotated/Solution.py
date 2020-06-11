
# Problem code
def search(nums, target):
    return search_helper(nums, target, 0, len(nums) - 1)

def search_helper(nums, target, left, right):
    if left > right:
        return -1

    mid = (left + right) // 2
    # right part is good
    if nums[mid] <= nums[right]:
        # we fall for it
        if target >= nums[mid] and target <= nums[right]:
            return binary_search(nums, target, mid, right)
        # we don't fall for it
        else:
            return search_helper(nums, target, left, mid - 1)

    # left part is good
    if nums[mid] >= nums[left]:
        # we fall for it
        if target >= nums[left] and target <= nums[mid]:
            return binary_search(nums, target, left, mid)
        #we don't fall for it
        else:
            return search_helper(nums, target, mid + 1, right)

    return -1

def binary_search(nums, target, left, right):
    while left <= right:
        mid = (left + right) // 2
        if nums[mid] == target:
            return mid
        elif target > nums[mid]:
            left = mid + 1
        else:
            right = mid - 1
    return -1
