
from collections import defaultdict

# Problem code
def canPermutePalindrome(s):
    dict = collections.defaultdict(int)
    for letter in s:
        dict[letter] += 1

    found_odd = False
    for key in dict:
        if dict[key] % 2 != 0:
            if found_odd:
                return False
            found_odd = True

    return True
