
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
func oddEvenList(_ head: ListNode?) -> ListNode? {
  let even_head = ListNode()
  var even_cur: ListNode? = even_head
  let odd_head = ListNode()
  var odd_cur: ListNode? = odd_head
  var counter = 0
  var temp = head

  while let h = temp {
    if counter % 2 == 0 {
      even_cur?.next = h
      even_cur = h
    } else {
      odd_cur?.next = h
      odd_cur = h
    }
    temp = h.next
    counter += 1
  }
  even_cur?.next = odd_head.next
  odd_cur?.next = nil
  return even_head.next
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
let result = oddEvenList(a)
print("Resulting list:")
if let result = result {
  result.printList()
}
