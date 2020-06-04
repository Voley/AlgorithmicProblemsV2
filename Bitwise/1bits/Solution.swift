
// Problem code
func hammingWeight(_ n: Int) -> Int {
    var temp = n
    var count = 0
    while temp != 0 {
        count += temp & 1
        temp >>= 1
    }
    return count
}

// Setup
let a = 23
print("Number of set bits in 23:")
let b = hammingWeight(a)
print(b)
