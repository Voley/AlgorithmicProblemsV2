
# Problem code
def letterCombinations(digits):
    mapping = {"1": [""],
               "2": ["a", "b", "c"],
               "3": ["d", "e", "f"],
               "4": ["g", "h", "i"],
               "5": ["j", "k", "l"],
               "6": ["m", "n", "o"],
               "7": ["p", "q", "r", "s"],
               "8": ["t", "u", "v"],
               "9": ["w","x","y","z"]}

    result = []
    string = ""
    helper(mapping, digits, string, result)
    return result

def helper(mapping, digits, current_string, result):
    if not digits:
        if current_string:
            result.append(current_string)
        return

    for ch in mapping[digits[0]]:
        helper(mapping, digits[1::], current_string + ch, result)


# Setup
print("Combinations for 24 are:")
a = "27"
print(letterCombinations(a))
