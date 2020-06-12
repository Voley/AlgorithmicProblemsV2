
# Problem code
def findDuplicate(nums):
    if len(nums) == 0:
        return -1

    slow = nums[0]
    fast = nums[nums[0]]

    while slow != fast:
        slow = nums[slow]
        fast = nums[nums[fast]]

        if slow == fast:
            slow = 0
            while slow != fast:
                slow = nums[slow]
                fast = nums[fast]
            break
    return slow
