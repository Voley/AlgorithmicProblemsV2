
# Support code
class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right


# Problem code
import collections

def buildTree(preorder, inorder):
    dq = collections.deque(preorder)
    return rec_build(dq, inorder)

def rec_build(preorder, inorder):
    if not inorder:
        return None
    root = ListNode(preorder.popleft())
    idx = inorder.index(root.val)

    root.left = rec_build(preorder, inorder[:idx:])
    root.right = rec_build(preorder, inorder[idx+1::])

    return root
