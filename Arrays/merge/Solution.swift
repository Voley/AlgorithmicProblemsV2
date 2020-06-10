
// Problem code
func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
	var read1 = m - 1
	var read2 = n - 1
	var writer = nums1.count - 1
	
	while writer >= 0 {

		if read1 < 0 {
			nums1[writer] = nums2[read2]
			read2 -= 1
		} else if read2 < 0 {
			nums1[writer] = nums1[read1]
			read1 -= 1
		} else if nums1[read1] < nums2[read2] {
			nums1[writer] = nums2[read2]
			read2 -= 1
		} else {
			nums1[writer] = nums1[read1]
			read1 -= 1
		}
		writer -= 1
	}
}
