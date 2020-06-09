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
func isValidBST(_ root: TreeNode?) -> Bool {
	return validateBSTRecursive(root, Int.min, Int.max)
}

func validateBSTRecursive(_ root: TreeNode?, _ min: Int, _ max: Int) -> Bool {
	guard let root = root else { return true }
	
	if root.val >= max || root.val <= min {
		return false
	}
	
	return validateBSTRecursive(root.left, min, root.val) &&
			validateBSTRecursive(root.right, root.val, max)
}
