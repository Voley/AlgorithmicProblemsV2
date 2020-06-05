
// Problem code
func reverse(_ x: Int) -> Int {
    var result = 0
    
    if x > Int32.max || x < Int32.min {
        return 0
    }
    
    var temp = x
    
    while temp != 0 {
        let digit = temp % 10
        result *= 10
        result += digit
        temp /= 10
    }
    
    if result > Int32.max || result < Int32.min {
        return 0
    }
    
    return result
}

// Setup
print("12345678 reversed is:")
let a = reverse(12345678)
print(a)
