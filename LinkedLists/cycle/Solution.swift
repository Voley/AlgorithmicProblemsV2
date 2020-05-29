
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
func hasCycle(_ head: ListNode?) -> Bool {
    
    if head == nil || head?.next == nil {
        return false
    }
    
    var slow = head
    var fast = head
    
    while slow != nil && fast != nil {
        slow = slow?.next
        fast = fast?.next?.next
        
        if fast === slow {
            return true
        }
    }
    return false
}

// Setup
var a = ListNode(0)
var b = ListNode(1)
var c = ListNode(2)
var d = ListNode(3)
var e = ListNode(4)

a.next = b
b.next = c
c.next = d
d.next = e
e.next = b

print("Detecting cycle:")
let result = hasCycle(a)
print("Has cycle?: ", String(result))
