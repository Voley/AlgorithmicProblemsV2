
// Problem code
class Solution {

    let numbers: [Int]
    
    init(_ nums: [Int]) {
        self.numbers = nums
    }
    
    func pick(_ target: Int) -> Int {
        var result = -1
        var count = 0
        for i in 0..<numbers.count {
            if numbers[i] != target {
                continue
            }
            count += 1
            if Int.random(in: 0..<count) == 0 {
                result = i
            }
        }
        return result
    }
}

// Setup
let a = [7,1,5,7,6,4,7]
let obj = Solution(a)
let param_1 = obj.pick(7)
print("Random 7 from array has index \(param_1)")
