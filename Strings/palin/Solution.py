
# Problem code
def isPalindrome(s):
    left = 0
    right = len(s) - 1

    while left < right:
        if not s[left].isalpha() and not s[left].isnumeric():
            left += 1
            continue

        if not s[right].isalpha() and not s[right].isnumeric():
            right -= 1
            continue

        l = s[left].lower()
        r = s[right].lower()
        if l != r:
            return False
        left += 1
        right -= 1

    return True

# Setup
a = "Race a car"
b = "A man, a plan, a canal: Panama"
print("\"Race a car\" is valid palindrome? " + str(isPalindrome(a)))
print("\"A man, a plan, a canal: Panama\" is valid palindrome? " + str(isPalindrome(b)))
