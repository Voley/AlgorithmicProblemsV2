# Rectangle Overlap (Easy 836)
A rectangle is represented as a list [x1, y1, x2, y2], where (x1, y1) are the
coordinates of its bottom-left corner, and (x2, y2) are the coordinates of its
top-right corner.

Two rectangles overlap if the area of their intersection is positive.  
To be clear, two rectangles that only touch at the corner or edges do not
overlap.

Given two (axis-aligned) rectangles, return whether they overlap.

# Solution:

<details><summary>Click here</summary>  
Check if horizontal and vertical lines in each rectangle overlap. Line
intersection can be checked by max(x1, x3) < min(x2, x4). O(1) time, O(1) space.

<br></br>

</details>

# Installation
Run `make` to run python and Swift files.
