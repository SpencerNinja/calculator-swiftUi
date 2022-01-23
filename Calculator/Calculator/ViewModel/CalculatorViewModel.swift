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
        characters.append(character)
    }

}
