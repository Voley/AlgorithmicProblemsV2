
// Problem code
class LRUCache {

    var storage: Dictionary <Int, Int> = [:]
    var prev: Dictionary <Int, Int> = [:]
    var next: Dictionary <Int, Int> = [:]
    var head = -1
    var tail = -2
    var size: Int = 0
    var maxSize: Int
    
    init(_ capacity: Int) {
        self.maxSize = capacity
        
        next[tail] = head
        prev[head] = tail
    }
    
    func get(_ key: Int) -> Int {
        if let value = storage[key] {
            remove(key)
            add(key, value)
            return value
        }
        return -1
    }
    
    func put(_ key: Int, _ value: Int) {
        if let _ = storage[key] {
            remove(key)
        }
        add(key, value)
    }
    
    private func remove(_ key: Int) {
        
        if let previous = prev[key] {
            next[previous] = next[key]!
        }
        
        if let after = next[key] {
            prev[after] = prev[key]!
        }
        
        prev.removeValue(forKey: key)
        next.removeValue(forKey: key)
        storage.removeValue(forKey: key)
        
        size -= 1
    }
    
    private func add(_ key: Int, _ value: Int) {
        
        if size == maxSize {
            remove(next[tail]!)
        }
        
        if let previous = prev[head] {
            next[previous] = key
            prev[key] = previous
        }
        
        storage[key] = value
        next[key] = head
        prev[head] = key
        
        size += 1
    }
}
