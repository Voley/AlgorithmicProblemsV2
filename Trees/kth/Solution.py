
# Support code
class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right

# Problem code
def kthSmallest(root, k):

    result = []

    def kth_helper(root, k):
        if not root:
            return

        nonlocal result

        if len(result) >= k:
            return

        kth_helper(root.left, k)
        result.append(root.val)
        kth_helper(root.right, k)

    kth_helper(root, k)

    return result[k - 1]
