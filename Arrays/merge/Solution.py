
# Problem code
def merge(nums1, m, nums2, n):
    """
    Do not return anything, modify nums1 in-place instead.
    """
    writer = len(nums1) - 1
    n -= 1
    m -= 1
    while writer >= 0:
        if m < 0:
            nums1[writer] = nums2[n]
            n -= 1
        elif n < 0:
            nums1[writer] = nums1[m]
            m -= 1
        elif nums1[m] < nums2[n]:
            nums1[writer] = nums2[n]
            n -= 1
        else:
            nums1[writer] = nums1[m]
            m -= 1
        writer -= 1
