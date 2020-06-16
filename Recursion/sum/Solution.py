
# Problem code
def combinationSum(candidates, target):
    result = []
    backtrack(target, sorted(candidates), 0, [], result)
    return result

def backtrack(sum, candidates, start_index, temp, result):
    if sum < 0 or start_index >= len(candidates):
        return

    if sum == 0:
        result.append(temp.copy())
        return

    for i in range(start_index, len(candidates)):
        candidate = candidates[i]
        # pick this number
        sum -= candidate
        temp.append(candidate)

        # backtrack
        backtrack(sum, candidates, i, temp, result)

        # remove this number
        sum += candidate
        temp.pop()
