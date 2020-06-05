
// Problem code
func sortColors(_ nums: inout [Int]) {
    
    var left = 0
    var right = nums.count - 1
    
    // move all 2s to end
    while left < right {
        if nums[left] != 2 {
            left += 1
        } else if nums[right] == 2 {
            right -= 1
        } else {
            nums.swapAt(left, right)
            right -= 1
        }
    }
    
    // move all 0s to start
    left = 0
    
    while left < right {
        if nums[left] == 0 {
            left += 1
        } else if nums[right] != 0 {
            right -= 1
        } else {
            nums.swapAt(left, right)
            right -= 1
        }
    }
}

// Setup
var a = [1, 2, 0, 0, 2, 1, 1, 0]
print("Unsorted array: \(a)")
sortColors(&a)
print("Sorted array: \(a)")
