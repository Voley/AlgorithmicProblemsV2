
# Problem code
def topKFrequent(words, k):
    table = {}

    for word in words:
        if word in table:
            table[word] += 1
        else:
            table[word] = 1

    heap = []
    for (s, freq) in table.items():
        if len(heap) < k:
            heapq.heappush(heap, Word(freq, s))
        else:
            heapq.heappushpop(heap, Word(freq, s))

    words = heapq.nsmallest(k, heap)
    result = []
    for word in words:
        result.append(word.word)
    return result[::-1]

class Word:
    def __init__(self, freq, word):
        self.freq = freq
        self.word = word

    def __lt__(self, other):
        if self.freq == other.freq:
            return self.word > other.word
        return self.freq < other.freq
