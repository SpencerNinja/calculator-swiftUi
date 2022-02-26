//
//  CalculatorApp.swift
//  Calculator
//
//  Created by Spencer Hurd on 1/22/22.
//

import SwiftUI

@main
struct CalculatorApp: App {
    
    @StateObject var calculatorViewModel: CalculatorViewModel = CalculatorViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                CalculatorView()
            }
        }
    }
}
