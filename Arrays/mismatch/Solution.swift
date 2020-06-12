
// Problem code
func findErrorNums(_ nums: [Int]) -> [Int] {
    var aux = Array<Int>(repeating: 0, count: nums.count + 1)
    var dup = 0
    var missing = 0
    for num in nums {
        if aux[num] == 1 {
            dup = num
        }
        aux[num] = 1
    }
    
    for i in 1..<aux.count {
        if aux[i] == 0 {
            missing = i
        }
    }
    return [dup, missing]
}
