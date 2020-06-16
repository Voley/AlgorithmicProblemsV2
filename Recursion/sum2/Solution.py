
# Problem code
def combinationSum2(candidates, target):
    result = []
    backtrack(0, sorted(candidates), target, result, [])
    return result

def backtrack(start_index, candidates, target, result, temp):
    if start_index > len(candidates) or target < 0:
        return

    if target == 0:
        result.append(temp.copy())
        return

    for i in range(start_index, len(candidates)):
        candidate = candidates[i]
        if candidate > target:
            return

        if i > start_index and candidates[i] == candidates[i - 1]:
            continue

        # use it
        target -= candidate
        temp.append(candidate)

        # backtrack
        backtrack(i + 1, candidates, target, result, temp)

        # unuse it
        target += candidate
        temp.pop()
