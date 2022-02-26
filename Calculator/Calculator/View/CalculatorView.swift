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
            LinearGradient(
                colors: [Color.mint, Color.green, Color.black],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Spacer()
                Text(calculatorViewModel.displayValue)
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                    .frame(
                        width: UIScreen.main.bounds.size.width - 60,
                        height: 60,
                        alignment: .trailing
                    )
                    .padding(.trailing)
                    .background(
                        Color.black
                            .opacity(0.7)
                    )
                    .cornerRadius(10)
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
