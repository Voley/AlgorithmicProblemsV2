
# Problem code
def groupAnagrams(strs):
    table = defaultdict(list)

    for word in strs:
        key = list(word)
        key.sort()
        key = str(key)
        table[key].append(word)

    result = []
    for key in table:
        result.append(table[key])
    return result
