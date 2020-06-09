
# Support code
class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right


# Problem code
def hasPathSum(root, sum):
    return preorder(root, 0, sum)

def preorder(root, total, target):
    if not root:
        return False

    total += root.val

    if total == target and not root.left and not root.right:
        return True

    left = preorder(root.left, total, target)
    right = preorder(root.right, total, target)

    return left or right
