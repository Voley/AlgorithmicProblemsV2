
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
func bstFromPreorder(_ preorder: [Int]) -> TreeNode? {
	return construct(preorder, 0, preorder.count - 1)
}

func construct(_ array: [Int], _ left: Int, _ right: Int) -> TreeNode? {
	if left > right {
		return nil
	}
	
	let root = TreeNode(array[left])
	
	var edge = left + 1
	
	while edge <= right {
		if array[edge] > array[left] {
			break
		}
		edge += 1
	}
	
	root.left = construct(array, left + 1, edge - 1)
	root.right = construct(array, edge, right)
	
	return root
}
