
# Problem code
def combine(n, k):
    result = []
    backtrack(1, n, k, result, [], set())
    return result

def backtrack(lower, upper, size, result, temp, used):
    if len(temp) == size:
        result.append(temp.copy())
        return
    if lower > upper:
        return

    for i in range(lower, upper + 1):
        if i in used:
            continue

        # use it
        temp.append(i)
        used.add(i)

        # backtrack
        backtrack(i + 1, upper, size, result, temp, used)

        # unuse it
        temp.pop()
        used.remove(i)
