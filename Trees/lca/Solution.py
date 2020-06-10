
# Support code
class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right

# Problem code
def lowestCommonAncestor(root, p, q):
    return lca(root, p, q)

def lca(node, p, q):
    if not node:
        return None

    if p.val < node.val and q.val < node.val:
        return lca(node.left, p, q)

    if p.val > node.val and q.val > node.val:
        return lca(node.right, p, q)

    return node
