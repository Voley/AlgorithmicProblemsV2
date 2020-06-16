
# Problem code
def permute(nums):
    result = []
    backtrack(nums, result, [], set())
    return result

def backtrack(nums, result, temp_array, used_set):
    if len(temp_array) == len(nums):
        result.append(temp_array.copy())
    else:
        for i in range(0, len(nums)):
            if nums[i] in used_set:
                continue

            # use it
            temp_array.append(nums[i])
            used_set.add(nums[i])

            # backtrack
            backtrack(nums, result, temp_array, used_set)

            # unuse it
            temp_array.pop()
            used_set.remove(nums[i])
