
// Support code
struct Event {
    var time: Int
    var isStart: Bool
}

// Problem code
func minMeetingRooms(_ intervals: [[Int]]) -> Int {
        
	var events = Array<Event>()
	for interval in intervals {
		events.append(Event(time: interval[0], isStart: true))
		events.append(Event(time: interval[1], isStart: false))
	}
	events.sort() {
		if $0.time == $1.time {
			return !$0.isStart
		}
		return $0.time < $1.time
	}
	
	var count = 0
	var maximum = 0
	
	for event in events {
		if event.isStart {
			count += 1
		} else {
			count -= 1
		}
		maximum = max(maximum, count)
	}
	return maximum
}


