
// Problem code
func removeDuplicates(_ nums: inout [Int]) -> Int {
    if nums.count < 2 {
        return nums.count
    }
    
    var reader = 1
    var writer = 0
    var count = 1
    
    while reader < nums.count {
        if nums[writer] != nums[reader] {
            writer += 1
            nums[writer] = nums[reader]
            count += 1
        }
        reader += 1
    }
    return count
}

// Setup
var a = [0,0,1,1,1,2,2,3,3,4]
_ = removeDuplicates(&a)
print("Array without duplicates: \(a)")
