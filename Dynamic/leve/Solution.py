
# Problem code
def minDistance(word1, word2):
    memo = {}
    return minDist(word1, word2, 0, 0, memo)

def minDist(word1, word2, idx1, idx2, memo):
    if idx1 == len(word1) and idx2 == len(word2):
        return 0
    if idx1 == len(word1):
        return len(word2) - idx2
    if idx2 == len(word2):
        return len(word1) - idx1

    if (idx1, idx2) in memo:
        return memo[(idx1, idx2)]

    insert = 0
    delete = 0
    replace = 0

    if word1[idx1] == word2[idx2]:
        return minDist(word1, word2, idx1 + 1, idx2 + 1, memo)

    insert = 1 + minDist(word1, word2, idx1, idx2 + 1, memo)
    delete = 1 + minDist(word1, word2, idx1 + 1, idx2, memo)
    replace = 1 + minDist(word1, word2, idx1 + 1, idx2 + 1, memo)

    result = min(insert, replace, delete)

    memo[(idx1, idx2)] = result

    return result
