//
//  ContentView.swift
//  Calculator
//
//  Created by Spencer Hurd on 1/22/22.
//

import SwiftUI

struct CalculatorView: View {
    
    @StateObject var calculatorViewModel: CalculatorViewModel = CalculatorViewModel()
    
    var body: some View {
        
        ZStack {
            // Change screen background color
            Color.black.ignoresSafeArea()
            
            VStack {
                Spacer()
                Text(calculatorViewModel.displayValue)
                    .font(.largeTitle)
                    .foregroundColor(.gray)
                Spacer()
                VStack {
                    HStack {
                        NumberKeyButton(keyNumber: "1")
                        NumberKeyButton(keyNumber: "2")
                        NumberKeyButton(keyNumber: "3")
                        OperatorKeyButton(keyOperator: "➗")
                    }
                    HStack {
                        NumberKeyButton(keyNumber: "4")
                        NumberKeyButton(keyNumber: "5")
                        NumberKeyButton(keyNumber: "6")
                        OperatorKeyButton(keyOperator: "✖️")
                    }
                    HStack {
                        NumberKeyButton(keyNumber: "7")
                        NumberKeyButton(keyNumber: "8")
                        NumberKeyButton(keyNumber: "9")
                        OperatorKeyButton(keyOperator: "➖")
                    }
                    HStack {
                        NumberKeyButton(keyNumber: ".")
                        NumberKeyButton(keyNumber: "0")
                        EqualKeyButton(equalKey: "=")
                        OperatorKeyButton(keyOperator: "➕")
                    }
                }
                .font(.system(size: 50, weight: .bold))
            }
        }
        .environmentObject(calculatorViewModel)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    
//    @StateObject var characterViewModel: CharacterViewModel = CharacterViewModel()
    
    static var previews: some View {
        CalculatorView()
//            .environmentObject(characterViewModel)
    }
}
