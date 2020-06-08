
# Problem code
def countAndSay(n):
    if n == 1:
        return "1"

    current = "1"
    for i in range(2, n + 1):
        current = helper(current)
    return current

def helper(current):
    group_count = 1
    group_member = current[0]
    result = ""
    for i in range(1, len(current)):
        if current[i] == group_member:
            group_count += 1
            continue
        else:
            result += str(group_count)
            result += str(group_member)
            group_count = 1
            group_member = current[i]
    result += str(group_count)
    result += str(group_member)
    return result

# Setup
print(countAndSay(4))
