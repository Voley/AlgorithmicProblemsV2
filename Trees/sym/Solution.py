
# Support code
class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right


# Problem code
def isSymmetric(root):
    if not root:
        return True
    return mirror(root.left, root.right)

def mirror(first, second):
    if not first and not second:
        return True
    if not first or not second:
        return False

    if first.val == second.val:
        left_side = mirror(first.left, second.right)
        right_side = mirror(first.right, second.left)
        return left_side and right_side

    return False
