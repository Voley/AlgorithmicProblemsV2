# Meeting Rooms (Easy 252)
Given an array of meeting time intervals consisting of start and end times
[[s1,e1],[s2,e2],...] (si < ei), determine if a person could attend all
meetings.

# Solution:

<details><summary>Click here</summary>  
Sort array by interval starts, then walk with a pointer from first and save max.
 If iterating intervals and start of interval ever is less then max, return
 false. Update interval end to max(interval.end, end). O(n) time, O(1) space.

<br></br>

</details>

# Installation
Run `make` to run python and Swift files.
