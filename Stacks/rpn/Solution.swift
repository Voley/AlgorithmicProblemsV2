
// Problem code
func evalRPN(_ tokens: [String]) -> Int {
	var stack = [Int]()
	let s = Set(["+", "-", "*", "/"])
	for value in tokens {
		if s.contains(value) {
			let op2 = stack.popLast() ?? 0
			let op1 = stack.popLast() ?? 0
			let res = evaluate(op1, op2, value)
			stack.append(res)
		} else {
			stack.append(Int(value) ?? 0)
		}
	}
	return stack.popLast() ?? 0
}

func evaluate(_ op1: Int, _ op2: Int, _ oper: String) -> Int {
	switch oper {
		case "+":
			return op1 + op2
		case "-":
			return op1 - op2
		case "*":
			return op1 * op2
		case "/":
			return op1 / op2
		default:
			break
	}
	return 0
}

// Setup
let input = ["4", "13", "5", "/", "+"]
print("Input: \(input)")
print("Result: \(evalRPN(input))")
