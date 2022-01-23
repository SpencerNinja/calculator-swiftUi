//
//  CalculatorApp.swift
//  Calculator
//
//  Created by Spencer Hurd on 1/22/22.
//

import SwiftUI

@main
struct CalculatorApp: App {
    
    @StateObject var characterViewModel: CharacterViewModel = CharacterViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                CalculatorView()
            }
            .environmentObject(characterViewModel)
        }
    }
}
