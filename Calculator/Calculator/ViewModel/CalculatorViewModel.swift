//
//  CalculatorViewModel.swift
//  Calculator
//
//  Created by Spencer Hurd on 1/22/22.
//

import Foundation

class CalculatorViewModel: ObservableObject {
    
    var firstOperandString = "0"
    var firstOperand: Int {
        return Int(firstOperandString) ?? 0
    }
    
    var secondOperandString = "0"
    var secondOperand: Int {
        return Int(secondOperandString) ?? 0
    }
    
    var selectedOperator = ""
    @Published var isSelected: Bool = false
    
    @Published var displayValue: String = "0"
    
    // Key with number is pressed
    func updateOperand(keyPressed: String) {
        if selectedOperator == "" {
            if (displayValue == "0") {
                displayValue = ""
            }
            firstOperandString.append(keyPressed)
            displayValue = firstOperandString
        } else {
            if (displayValue == "0") {
                displayValue = ""
            }
            secondOperandString.append(keyPressed)
            displayValue = secondOperandString
        }
    }
    
    // Key with operator (+ - * /) is pressed
    func updateOperator(keyPressed: String) {
        selectedOperator = keyPressed
        isSelected = true
    }
    
    // Key with = sign is pressed
    func calculateOperation() {
        if firstOperand != 0 && secondOperand != 0 {
            var resultOfCalculation = 0
            switch selectedOperator {
            case "➕":
                resultOfCalculation = Int(firstOperand) + Int(secondOperand)
            case "➖":
                resultOfCalculation = Int(firstOperand) - Int(secondOperand)
            case "✖️":
                resultOfCalculation = Int(firstOperand) * Int(secondOperand)
            case "➗":
                resultOfCalculation = Int(firstOperand) / Int(secondOperand)
            default:
                print("No operator selected")
            }
            displayValue = String(resultOfCalculation)
        }
    }
    
}

/**
 PSUEDOCODE: Overall
 - function to add number to the display (updateOperand) - triggers anytime a number key is pressed
 - function to highlight selected operation (updateOperator) - triggers anytime an operator key is pressed
 - function to perform calculation (calculateOperation) - triggers when the = operator key is pressed
 - variable to store first number value (firstOperand)
 - variable to store second number value (secondOperand)
 - variable to store operator (selectedOperator)
 - variable to store display (displayedValue)
 
 PSUEDOCODE: updateOperand(keyPressed: String)
 1. if selectedOperator == ""
    2. firstOperand.append(keyPressed)
    3. display = firstOperand
 4. else
    5. secondOperand.append(keyPressed)
    6. display = secondOperand
 
 PSUEDOCODE: updateOperator(keyPressed: String)
 1. selectedOperator = keyPressed
 
 PSUEDOCODE: calculateOperation()
 1. if firstOperand != "" && secondOperand != ""
    2. resultOfCalculation = 0
    3. convert firstOperand to Int
    4. convert secondOperand to Int
    5. switch on operator
        6. operator == "+"
            7. result = firstOperand + secondOperand
        8. . . . and so on
    9. display = result
 */
