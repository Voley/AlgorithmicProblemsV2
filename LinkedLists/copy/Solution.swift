public class Node: Hashable {
    public var val: Int
    public var next: Node?
    public var random: Node?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
        self.random = nil
    }
    
    public static func == (lhs: Node, rhs: Node) -> Bool {
        return lhs.val == rhs.val
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(val)
    }
    
    public func printList() {
        let address = String(Unmanaged.passUnretained(self).toOpaque().debugDescription)
        let part = String(address.suffix(4))
        
        print("Node \(String(self.val)) (address:\(part))", terminator:" ")
        if self.random != nil {
            print(", random:\(String(self.random!.val)) ->", terminator: " ")
        }
        if self.next != nil {
            self.next?.printList()
        }
    }
}

// Problem code
func copyRandomList(_ head: Node?) -> Node? {
    if head == nil {
        return nil
    }
    
    let dummy: Node? = Node(0)
    var currentClone: Node? = dummy
    var currentOriginal: Node? = head
    var table = Dictionary<Node, Node>()
    
    while let c = currentOriginal {
        let clone = Node(c.val)
        currentClone?.next = clone
        currentClone = currentClone?.next
        currentOriginal = c.next
        table[c] = clone
    }
    
    currentOriginal = head
    currentClone = dummy?.next
    
    while let c = currentOriginal {
        if c.random != nil {
            if let item = table[c.random!] {
                currentClone?.random = item
            }
        }
        currentClone = currentClone?.next
        currentOriginal = currentOriginal?.next
    }
    return dummy?.next
}

var a = Node(1)
var b = Node(2)
var c = Node(3)

a.next = b
b.next = c
a.random = c
b.random = c
print("Original list:")
a.printList()
print("\nCopied list:")
let x = copyRandomList(a)
x!.printList()
