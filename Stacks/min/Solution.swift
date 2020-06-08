
// Problem code
class MinStack {
    
    var storage = Array<Int>()
    var min_storage = Array<Int>()

    /** initialize your data structure here. */
    init() {
        
    }
    
    func push(_ x: Int) {
        storage.append(x)
        if min_storage.count == 0 || min_storage[min_storage.count - 1] >= x {
            min_storage.append(x)
        }
    }
    
    func pop() {
        guard let last = storage.popLast() else { return }
        if last == min_storage[min_storage.count - 1] {
            _ = min_storage.popLast()
        }
    }
    
    func top() -> Int {
        guard let last = storage.last else { return 0 }
        return last
    }
    
    func getMin() -> Int {
        guard let last = min_storage.last else { return 0 }
        return last
    }
}
