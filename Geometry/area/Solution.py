
# Problem code
def computeArea(A, B, C, D, E, F, G, H):
    z1, z2, h_int = lineIntersection(A, C, E, G)
    z3, z4, v_int = lineIntersection(B, D, F, H)

    area1 = abs(A - C) * abs(B - D)
    area2 = abs(E - G) * abs(F - H)
    result = 0
    if h_int and v_int:
        intersection_area = abs(z1 - z2) * abs(z3 - z4)
        result = area1 + area2 - intersection_area
    else:
        result = area1 + area2
    return result


def lineIntersection(a, b, c, d):
    x1 = max(a, c)
    x2 = min(b, d)
    return (x1, x2, x1 < x2)

# Setup
print("Area occupied by rects is:")
a = computeArea(-3, 0, 3, 4, 0, -1, 9, 2)
print(a)
