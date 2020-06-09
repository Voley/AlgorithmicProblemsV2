
# Support code
class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right


# Problem code
def isValidBST(root):
    return validate(root, float("-inf"), float("inf"))

def validate(root, min, max):
    if not root:
        return True

    if root.val >= max or root.val <= min:
        return False

    return validate(root.left, min, root.val) and validate(root.right, root.val, max)
