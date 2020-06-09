
# Support code
class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right


# Problem code
def lowestCommonAncestor(root, p, q):
    if not root:
        return None
    if root == q or root == p:
        return root

    left = self.lowestCommonAncestor(root.left, p, q)
    right = self.lowestCommonAncestor(root.right, p, q)

    if left and right:
        return root
    if not left:
        return right
    if not right:
        return left
