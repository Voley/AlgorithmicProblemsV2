
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
func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
	if root == nil {
		return 0
	}
	var diameter = 0
	_ = calculateHeights(root, &diameter)
	return diameter
}

func calculateHeights(_ root: TreeNode?, _ diameter: inout Int) -> Int {
	if root == nil {
		return 0
	}
	
	let left = calculateHeights(root?.left, &diameter)
	let right = calculateHeights(root?.right, &diameter)
	
	diameter = max(diameter, left + right)
	
	return 1 + max(left, right)
}
