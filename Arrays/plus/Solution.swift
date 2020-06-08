
// Problem code
func plusOne(_ digits: [Int]) -> [Int] {
    var result = [Int]()
    var carry = 1
    var digit = digits.count - 1
    
    while digit >= 0 || carry > 0 {
        var current = 0
        
        if digit >= 0 {
            current = digits[digit]
        }
        
        current += carry
        carry = 0
        
        if current > 9 {
            carry = current - 9
            current -= 10
        }
        
        result.append(current)
        digit -= 1
    }
    
    result.reverse()
    return result
}

// Setup
let a = [1, 9, 9]
print("Adding 1 to \(a)")
let b = plusOne(a)
print(b)
