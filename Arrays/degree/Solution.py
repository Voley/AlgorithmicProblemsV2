
# Problem code
def findShortestSubArray(nums):

    if not nums:
        return 0

    nums_map = collections.defaultdict(list)
    degree = 0

    for index, value in enumerate(nums):
        nums_map[value].append(index)
        degree = max(degree, len(nums_map[value]))

    candidate = None
    for arr in nums_map.values():
        if len(arr) != degree:
            continue
        length = arr[-1] - arr[0] + 1
        candidate = length if not candidate else min(candidate, length)

    return candidate
