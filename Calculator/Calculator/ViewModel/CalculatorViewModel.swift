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

}
