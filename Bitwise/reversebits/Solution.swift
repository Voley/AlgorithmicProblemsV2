
// Problem code
func reverseBits(_ n: Int) -> Int {
    var temp = n
    var result = 0
    
    for _ in 0..<32 {
        result <<= 1
        result += temp & 1
        temp >>= 1
    }
    return result
}

// Setup
print("12345678 reversed bits is:")
let a = reverseBits(12345678)
print(a)
