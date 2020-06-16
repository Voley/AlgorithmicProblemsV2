
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
func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
	var result = [Int]()
	kthRecursive(root, k, &result)
	return result[k - 1]
}

func kthRecursive(_ root: TreeNode?, _ k: Int, _ result: inout Array<Int>) {
	if root == nil || result.count == k {
		return
	}
	
	kthRecursive(root?.left, k, &result)
	result.append(root!.val)
	kthRecursive(root?.right, k, &result)
}
