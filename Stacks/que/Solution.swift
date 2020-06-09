
// Problem code
class MyQueue {

    var enqStorage = [Int]()
    var deqStorage = [Int]()
    
    /** Initialize your data structure here. */
    init() {
        
    }
    
    /** Push element x to the back of queue. */
    func push(_ x: Int) {
        enqStorage.append(x)
    }
    
    /** Removes the element from in front of queue and returns that element. */
    func pop() -> Int {
        if empty() {
            return 0
        }
        move()
        return deqStorage.popLast()!
    }
    
    private func move() {
        if deqStorage.count == 0 {
            for item in enqStorage.reversed() {
                deqStorage.append(item)
            }
            enqStorage = [Int]()
        }
    }
    
    /** Get the front element. */
    func peek() -> Int {
        if empty() {
            return 0
        }
        move()
        return deqStorage.last!
    }
    
    /** Returns whether the queue is empty. */
    func empty() -> Bool {
        return (enqStorage.count + deqStorage.count) == 0
    }
}
