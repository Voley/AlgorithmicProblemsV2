
# Support code
class Event:
    def __init__(self, time, is_start):
        self.time = time
        self.is_start = is_start

    def __lt__(self, other):
        if self.time == other.time:
            return not self.is_start
        return self.time < other.time


# Problem code
def minMeetingRooms(intervals):

    events = []
    for interval in intervals:
        events.append(Event(interval[0], True))
        events.append(Event(interval[1], False))
    count = 0
    maximum = 0
    for event in sorted(events):
        if event.is_start:
            count += 1
        else:
            count -= 1
        maximum = max(maximum, count)
    return maximum
