
public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init() { self.val = 0; self.next = nil; }
  public init(_ val: Int) { self.val = val; self.next = nil; }
  public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
  public func printList() {
    print("Node(\(self.val))", terminator: "")
    if let next = self.next {
      print(" -> ", terminator: "")
      next.printList()
    }
  }
}
// Problem code
func reverseList(_ head: ListNode?) -> ListNode? {
  var prev: ListNode?
  var cur = head
  var next = head?.next

  while let current = cur {
      current.next = prev
      prev = current
      cur = next
      next = cur?.next
  }
  return prev
}

// Setup
print("Setting up a list:")
var a = ListNode(0)
var b = ListNode(1)
var c = ListNode(2)
var d = ListNode(3)
var e = ListNode(4)

a.next = b
b.next = c
c.next = d
d.next = e

a.printList()
print("")

print("Running code...")
print("")
let result = reverseList(a)
print("Resulting list:")
if let result = result {
  result.printList()
}
