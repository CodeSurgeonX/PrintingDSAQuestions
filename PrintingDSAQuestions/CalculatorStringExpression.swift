//
//  CalculatorStringExpression.swift
//  PrintingDSAQuestions
//
//  Created by Shashwat Kashyap on 20/02/24.
//

import Foundation

class {
    // Operator it is a sign that you can now resolve the already exsisting operator in stack
    // But there is a catch if the second operator encountered is * or / then and first one is + or - then we cant pop because of BODMAS
    // Ignoring bracket for now - To make questions easier
    // Considering only single digits for now - To make questions easier

    func calculate(expression: String) {
        // To make handling slighltly easier
        let expressionElementsArray = Array(expression)
        
        var expressionParserStack = [Character]()
        let allowedOperations: Set<Character> = ["+", "-", "*", "/"]
        var lastValue: Character?
        var lastOperator: Character?
        
        for element in expressionElementsArray {
            // Digits
            // Operators
            
            // We are not taking care of scenrio right now where it is neither digit nor operator
            if allowedOperations.contains(element) {
                // Operator
                if let lastOperator {
                    // This is not the first operator I am encountering
                    
                    // Now I need to pop elements from stack and check if the operator combination is something I can deal with and not blocked by BODMAS
                    
                    if (element == "/" || element == "*") && (lastOperator == "+" || lastOperator == "-")  {
                        // In this case I am blocked by BODMAS
                        
                        
                        
                    } else {
                        // Solve the expression and insert the result
                    }
                    
                    
                    
                    
                } else {
                    // This is the first character I am encountering
                    lastOperator = element
                    expressionParserStack.append(element)
                }
            } else {
                // Digit
                lastValue = element
                expressionParserStack.append(element)
            }
            
            
        }
        
        func solve(first: Character, second: Character, operation: Character) -> Character {
            switch operation {
            case "+":
                return Character(Int(String(first)) +  Int(String(second)))
            case "-":
                return Character(Int(String(first)) -  Int(String(second)))
            case "*":
                return Character(Int(String(first)) *  Int(String(second)))
            case "/":
                return Character(Int(String(first)) /  Int(String(second)))
            default:
                fatalError("Unknown operation")
            }
        }
    }

}
