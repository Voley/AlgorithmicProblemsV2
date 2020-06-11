
# Problem code
def searchRange(nums, target):
    start = find_start(nums, target, 0, len(nums) - 1)
    end = find_end(nums, target, 0, len(nums) - 1)
    return [start, end]

def find_start(nums, target, left, right):
    start_index = -1
    while left <= right:
        mid = (left + right) // 2
        if nums[mid] == target:
            start_index = mid
            right = mid - 1
        elif nums[mid] < target:
            left = mid + 1
        else:
            right = mid - 1
    return start_index

def find_end(nums, target, left, right):
    end_index = -1
    while left <= right:
        mid = (left + right) // 2
        if nums[mid] == target:
            end_index = mid
            left = mid + 1
        elif nums[mid] < target:
            left = mid + 1
        else:
            right = mid - 1
    return end_index
