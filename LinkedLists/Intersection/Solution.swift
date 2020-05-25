
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
func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
    let lenA = listLength(headA)
    let lenB = listLength(headB)
    var pointerA = headA
    var pointerB = headB
    if lenA > lenB {
        pointerA = advance(pointerA, lenA - lenB)
    } else {
        pointerB = advance(pointerB, lenB - lenA)
    }
    
    while let p1 = pointerA, let p2 = pointerB {
        if p1 === p2 {
            return pointerA
        }
        pointerA = p1.next
        pointerB = p2.next
    }
    return nil
}

func advance(_ head: ListNode?, _ count: Int) -> ListNode? {
    var c = count
    var temp = head
    while let t = temp, c > 0 {
        temp = t.next
        c -= 1
    }
    return temp
}

func listLength(_ head: ListNode?) -> Int {
    var count = 0
    var temp = head
    while let h = temp {
        count += 1
        temp = h.next
    }
    return count
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
print("Second list:")
d.printList()
print("")


print("Running code...")
print("")
let result = getIntersectionNode(a, d)
print("Intersection node:")
if let result = result {
    print(result.val)
}
