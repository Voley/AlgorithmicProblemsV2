
# Problem code
def subsets(nums):
    result = []
    backtrack(nums, 0, result, [])
    return result

def backtrack(nums, index, result, temp):
    result.append(temp.copy())

    for i in range(index, len(nums)):

        # use it
        temp.append(nums[i])

        # backtrack
        backtrack(nums, i + 1, result, temp)

        # don't use it
        temp.pop()
