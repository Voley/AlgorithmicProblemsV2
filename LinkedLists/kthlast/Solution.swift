
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
func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    let dummy = ListNode()
    dummy.next = head
    var left: ListNode? = dummy
    var right: ListNode? = dummy
    for _ in 0..<n {
        right = right?.next
    }
    
    while right?.next != nil {
        right = right?.next
        left = left?.next
    }
    
    left?.next = left?.next?.next
    
    return dummy.next
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
print("\n")
print("Removing 2nd from end...")
let result = removeNthFromEnd(a, 2)
print("After removal:")
if let result = result {
    result.printList()
}
print("\n")
print("Removing 4th from end...")
print("After removal:")
let r2 = removeNthFromEnd(result, 4)
if let r2 = r2 {
    r2.printList()
}
