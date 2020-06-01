// Problem code
func threeSum(_ nums: [Int]) -> [[Int]] {
    if nums.count < 3 {
        return []
    }
    
    var result = [[Int]]()
    var temp = nums
    temp.sort()
    
    for i in 0..<(temp.count - 2) {
        var l = i + 1
        var r = temp.count - 1
        
        if i > 0 && temp[i] == temp[i - 1] {
            continue
        }
        
        while l < r {
            let sum = temp[i] + temp[l] + temp[r]
            if sum == 0 {
                result.append([temp[i], temp[l], temp[r]])
                l += 1
                while l < r && temp[l] == temp[l - 1] {
                    l += 1
                }
                r -= 1
                while l < r && temp[r] == temp[r + 1] {
                    r -= 1
                }
            } else if sum < 0 {
                l += 1
            } else {
                r -= 1
            }
        }
    }
    return result
}

// Setup

var a = [-1,0,1,2,-1,-4]
let b = threeSum(a)
print("Initial array: ", a)
print("Three sum pairs to 0: ", b)
