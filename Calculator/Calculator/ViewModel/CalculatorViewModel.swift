//
//  CalculatorViewModel.swift
//  Calculator
//
//  Created by Spencer Hurd on 1/22/22.
//

import Foundation

class CharacterViewModel: ObservableObject {
    
    @Published var characters: String = "0"
    
    func addCharacter(character: String) {
        if (characters.prefix(1) == "0") {
            characters.removeAll()
        }
        characters.append(character)
    }
    
    func convertToList() {
        var equationList: [String] = []
        var selectedChar: String = ""
        var operand: String = ""
        for char in characters {
            if (char != "➕" || char != "➖" || char != "✖️" || char != "➗") {
                selectedChar.append(char)
            }
            if (char == "➕" || char == "➖" || char == "✖️" || char == "➗") {
                equationList.append(selectedChar)
                selectedChar = ""
                if (char == "➕" ) {
                    operand = "+"
                } else if (char == "➖") {
                    operand = "-"
                } else if (char == "✖️") {
                    operand = "*"
                } else if (char == "➗") {
                    operand = "/"
                }
            }
        }
    }
    /**
     Logic of how to add numbers:
     1. append numbers to a list when an operand is detected
     2. store operand
     3. when two numbers have been added to the list, use the operand to perform the operation on those values
     4. or once the equal button is hit, execute the statement in order
     */

}
