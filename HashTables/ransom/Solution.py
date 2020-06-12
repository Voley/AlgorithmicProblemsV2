
# Problem code
def canConstruct(self, ransomNote: str, magazine: str) -> bool:
    letters = collections.defaultdict(int)
    for letter in magazine:
        letters[letter] += 1

    for letter in ransomNote:
        letters[letter] -= 1
        if letters[letter] < 0:
            return False
    return True
