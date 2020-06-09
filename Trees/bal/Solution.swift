// Support code
public class TreeNode {
	public var val: Int
	public var left: TreeNode?
	public var right: TreeNode?
	public init() { self.val = 0; self.left = nil; self.right = nil; }
	public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
	public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
		self.val = val
		self.left = left
		self.right = right
	}
}

// Problem code
func isBalanced(_ root: TreeNode?) -> Bool {
	return check(root) != -1
}

func check(_ root: TreeNode?) -> Int {
	if root == nil {
		return 0
	}
	
	let left = check(root?.left)
	if left == -1 {
		return -1
	}
	
	let right = check(root?.right)
	if right == -1 {
		return -1
	}
	
	if abs(left - right) > 1 {
		return -1
	}
	
	return 1 + max(left, right)
}
