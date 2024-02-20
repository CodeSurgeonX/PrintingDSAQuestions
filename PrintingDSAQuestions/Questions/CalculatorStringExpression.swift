//
//  CalculatorStringExpression.swift
//  PrintingDSAQuestions
//
//  Created by Shashwat Kashyap on 20/02/24.
//

import Foundation

struct CalculatorStringExpression: Solution {
    func run() {
        
        
        
    }
}





/*
 
 enum CalculatorEntity {
     case digit(Int)
     case operation((Int, Int) -> Int)
     
     init?(character: Character) {
         let allowedOperations: Set<Character> = ["+", "-", "*", "/"]
         if allowedOperations.contains(character) {
             switch character {
             case "+":
                 self = .operation(+)
             case "-":
                 self = .operation(+)
             case "*":
                 self = .operation(+)
             case "/":
                 self = .operation(+)
             default:
                 fatalError("Unknown State")
             }
         } else if let digit = Int(String(character)) {
             self = .digit(digit)
         } else {
             return nil
         }
     }
 }

 func calculate(expression: String) {
     let elementsArray = Array(expression).compactMap({ CalculatorEntity(character: $0)})
     var stack = [CalculatorEntity]()
     var lastValue: CalculatorEntity?
     var lastOperation: CalculatorEntity?
     
     for element in elementsArray {
         switch element {
         case .digit( _ ):
             lastValue = element
             stack.append(element)
         case .operation( let currentOperation ):
             if let lastOperation {
                 if currentOperation === + ||  currentOperation === - {
                     
                 }
             } else {
                 lastOperation = element
                 stack.append(element)
             }
         }
     }
 }
}
 
 
 */
