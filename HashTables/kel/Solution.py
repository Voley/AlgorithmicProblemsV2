
# Problem code
def topKFrequent(nums, k):
    table = {}

    for num in nums:
        if num in table:
            table[num] = table[num] + 1
        else:
            table[num] = 1
    temp = []
    for (value, freq) in table.items():
        temp.append(Number_frequency(value, freq))
    temp.sort()

    return list(map(lambda num: num.number, temp[:k:]))



class Number_frequency:

    def __init__(self, number, freq):
        self.number = number
        self.freq = freq

    def __lt__(self, other):
        return self.freq > other.freq
