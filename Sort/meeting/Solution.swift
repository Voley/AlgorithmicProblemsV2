
// Support code
func canAttendMeetings(_ intervals: [[Int]]) -> Bool {
	if intervals.count <= 1 {
		return true
	}
	
	var maxEnd = 0
	
	for interval in intervals.sorted(by: {$0[0] < $1[0]}) {
		if interval[0] < maxEnd {
			return false
		}
		maxEnd = max(maxEnd, interval[1])
	}
	return true
}
