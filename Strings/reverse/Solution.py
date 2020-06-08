
# Problem code
def reverseWords(s):
    return " ".join(s.split()[::-1])

# Setup
a = "a good   example"
print(reverseWords(a))
