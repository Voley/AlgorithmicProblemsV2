
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

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    if l1 == nil && l2 == nil {
        return nil
    }
    var first = l1
    var second = l2
    var carry = 0
    let dummy = ListNode(0)
    var current: ListNode? = dummy
    while first != nil || second != nil || carry > 0 {
        var v1 = 0
        var v2 = 0
        
        if let f = first {
            v1 = f.val
            first = f.next
        }
        
        if let s = second {
            v2 = s.val
            second = s.next
        }
        
        var result = v1 + v2 + carry
        carry = 0
        if result > 9 {
            carry = 1
            result = result - 10
        }
        current?.next = ListNode(result)
        current = current?.next
    }
    return dummy.next
}


func listLength(_ head: ListNode?) -> Int {
    var counter = 0
    var temp = head
    while let h = temp {
        counter += 1
        temp = h.next
    }
    return counter
}

// Setup
print("Setting up a list:")

var a = ListNode(9)
var b = ListNode(9)
var c = ListNode(1)

var d = ListNode(1)
var e = ListNode(2)

a.next = b
b.next = c

d.next = e

print("")
print("Adding two numbers:")
a.printList()
print("")
d.printList()
let result = addTwoNumbers(a, d)
print("\n")
print("After adding:")
result?.printList()
