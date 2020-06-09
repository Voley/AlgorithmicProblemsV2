# Support code
class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right


# Problem code
import collections

def levelOrder(root):
	if not root:
		return []
	cur_q = collections.deque()
	other_q = collections.deque()
	result = []
	cur_level = []
	cur_q.append(root)
	while len(cur_q) > 0:
		item = cur_q.popleft()
		cur_level.append(item.val)
		if item.left:
			other_q.append(item.left)
		if item.right:
			other_q.append(item.right)
		if len(cur_q) == 0:
			result.append(cur_level)
			cur_level = []
			cur_q, other_q = other_q, cur_q
	return result

# Setup
a = TreeNode(0)
b = TreeNode(10)
c = TreeNode(11)
d = TreeNode(20)
e = TreeNode(21)
f = TreeNode(22)
h = TreeNode(23)

a.left = b
a.right = c
b.left = d
b.right = e
c.left = f
c.right = h

print("Node level traversal is: " + str(levelOrder(a)))
