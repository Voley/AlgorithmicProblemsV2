
// Support code
public class ListNode {
	public var val: Int
	public var next: ListNode?
	public init() { self.val = 0; self.next = nil; }
	public init(_ val: Int) { self.val = val; self.next = nil; }
	public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

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
func sortedListToBST(_ head: ListNode?) -> TreeNode? {
	var count = 0
	var temp = head
	while temp != nil {
		temp = temp?.next
		count += 1
	}
	return sortedListToTreeRecursive(head, count)
}

func sortedListToTreeRecursive(_ head: ListNode?, _ length: Int) -> TreeNode? {
	if head == nil || length == 0 {
		return nil
	}
	
	var temp = head
	for _ in 0..<(length / 2) {
		temp = temp?.next
	}
	
	let root = TreeNode(temp?.val ?? 0)
	root.left = sortedListToTreeRecursive(head, (length / 2))
	root.right = sortedListToTreeRecursive(temp?.next, length - (length / 2) - 1)
	return root
}
