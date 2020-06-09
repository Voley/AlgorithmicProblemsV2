
# Problem code
import collections

def evalRPN(tokens):

    digits = collections.deque()
    operators_map = {"+", "-", "/", "*"}

    for s in tokens:
        if s in operators_map:
            op2 = digits.pop()
            op1 = digits.pop()
            r = evaluate(op1, op2, s)
            digits.append(r)
        else:
            digits.append(int(s))

    return digits.pop()


def evaluate(op1, op2, operator):
    if operator == "+":
        return op1 + op2
    elif operator == "-":
        return op1 - op2
    elif operator == "*":
        return op1 * op2
    elif operator == "/":
        return int(op1 / op2)


# Setup
input = ["4", "13", "5", "/", "+"]
print("Input: ", input)
print("Result: ", evalRPN(input))
