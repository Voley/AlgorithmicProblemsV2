
# Support code
class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right

# Problem code
def searchBST(root):
    return search(root, val)

def search(root, target):
    if not root:
        return None

    if root.val == target:
        return root

    if root.val > target:
        return search(root.left, target)

    if root.val < target:
        return search(root.right, target)
