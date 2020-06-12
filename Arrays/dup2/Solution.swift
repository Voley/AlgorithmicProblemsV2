
// Problem code
func findDuplicate(_ nums: [Int]) -> Int {
       
   var slow = nums[0]
   var fast = nums[nums[0]]
   
   while slow != fast {
       slow = nums[slow]
       fast = nums[nums[fast]]
       
       if slow == fast {
           slow = 0
           while slow != fast {
               slow = nums[slow]
               fast = nums[fast]
           }
           return slow
       }
   }
   return slow
}
