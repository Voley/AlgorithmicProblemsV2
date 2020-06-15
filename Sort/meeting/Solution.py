
# Support code
def canAttendMeetings(intervals):

    if len(intervals) <= 1:
        return True

    end = 0

    for interval in sorted(intervals, key=lambda x: x[0]):
        if interval[0] < end:
            return False
        end = max(end, interval[1])

    return True
