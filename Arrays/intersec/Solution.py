
# Problem code
def intersection(nums1, nums2):
    s = set(nums1)
    result = set()
    for item in nums2:
        if item in s:
            result.add(item)
    return list(result)

# Setup
a = [1, 4, 3, 6, 7, 2]
b = [4, 2]

print(a)
print(b)
print("Intersection of two arrays: ", intersection(a, b))
