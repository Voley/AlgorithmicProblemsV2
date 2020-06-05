# Problem code
def isRectangleOverlap(rec1, rec2):

    x1, x2 = rec1[0], rec1[2]
    y1, y2 = rec1[1], rec1[3]

    x3, x4 = rec2[0], rec2[2]
    y3, y4 = rec2[1], rec2[3]

    return lineIntersection(x1, x2, x3, x4) and lineIntersection(y1, y2, y3, y4)

def lineIntersection(x1, x2, x3, x4):
    return max(x1, x3) < min(x2, x4)

# Setup
rec1 = [0,0,2,2]
rec2 = [1,1,3,3]

print("Does intersection exist between " + str(rec1) + " and " + str(rec2) + "?")
a = isRectangleOverlap(rec1, rec2)
print(a)
