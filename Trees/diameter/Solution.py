
# Support code
class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right

# Problem code
def diameterOfBinaryTree(root):
    if not root:
        return 0

    best_diameter = 0

    def check_node(node):
        if not node:
            return 0
        left = check_node(node.left)
        right = check_node(node.right)

        nonlocal best_diameter
        best_diameter = max(best_diameter, left + right)

        return 1 + max(left, right)

    check_node(root)

    return best_diameter
