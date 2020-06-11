
// Problem code
class Solution {
    func topKFrequent(_ words: [String], _ k: Int) -> [String] {
        var table = Dictionary<String, Int>()
        for word in words {
            if let found = table[word] {
                table[word] = found + 1
            } else {
                table[word] = 1
            }
        }
        var wordArray = [Word]()
        for (key, value) in table {
            wordArray.append(Word(value: key, freq: value))
        }
        wordArray.sort() {
            if $0.freq == $1.freq {
                return $0.value < $1.value
            }
            return $0.freq > $1.freq
        }
        return wordArray.prefix(k).compactMap { $0.value }
    }
}

struct Word {
    var value: String
    var freq: Int
}
