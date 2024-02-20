struct CalculatorStringExpression: Solution {
    func run() {
        func calculate(expr: String) -> Int {
            let allowedOperations: Set<Character> = ["+", "-", "*", "/"]
            let entitiesArray = Array(expr)
            var lastOperator: Character?
            var operatorStack = [Character]()
            var digitStack = [Int]()
            
            for item in entitiesArray {
                if allowedOperations.contains(item) {
                    if lastOperator != nil {
                        if !((item == "/" || item == "*") && (lastOperator == "+" || lastOperator == "-")) { // Non BODMAS case
                            while !operatorStack.isEmpty {
                                guard let secondItem = digitStack.popLast(),
                                      let operation = operatorStack.popLast(),
                                      let firstItem = digitStack.popLast() else { fatalError("Invalid Expression") }
                                digitStack.append(solve(first: firstItem, second: secondItem, operation: operation))
                            }
                        }
                    }
                    lastOperator = item
                    operatorStack.append(item)
                } else { // This is digit. We are ignoring illegal characters.
                    if let digit = Int(String(item)) {
                        digitStack.append(digit)
                    }
                }
            }
            
            while !operatorStack.isEmpty {
                guard let secondItem = digitStack.popLast(),
                      let operation = operatorStack.popLast(),
                      let firstItem = digitStack.popLast() else { fatalError() }
                digitStack.append(solve(first: firstItem, second: secondItem, operation: operation))
            }
            return digitStack.popLast()!
        }
        
        func solve(first: Int, second: Int, operation: Character) -> Int {
            switch operation {
            case "+":
                return first + second
            case "-":
                return first - second
            case "*":
                return first * second
            case "/":
                return first / second
            default:
                fatalError("Invalid Operator Found")
            }
        }
        print(calculate(expr: "3+4/2-1")) //4
        print(calculate(expr: "4-5+6")) //5
        print(calculate(expr: "4/2+6/2")) //5
        print(calculate(expr: "3/3+4*6-9")) //16
        print(calculate(expr: "9*5-4*5+9")) //34
    }
}
