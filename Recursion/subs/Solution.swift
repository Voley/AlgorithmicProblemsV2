
// Problem code
func subsets(_ nums: [Int]) -> [[Int]] {
    var result = [[Int]]()
    var temp = [Int]()
    backtrack(nums, &result, 0, &temp)
    return result
}

func backtrack(_ nums: [Int], _ result: inout [[Int]], _ index: Int, _ temp: inout [Int]) {
    result.append(temp)
    
    if index >= nums.count {
        return
    }
    
    for i in index..<nums.count {
        
        // use it
        temp.append(nums[i])
        
        // backtrack
        backtrack(nums, &result, i + 1, &temp)
        
        // unuse it
        _ = temp.popLast()
    }
}
