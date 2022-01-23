//
//  ContentView.swift
//  Calculator
//
//  Created by Spencer Hurd on 1/22/22.
//

import SwiftUI

struct CalculatorView: View {
    
    var body: some View {
        
        ZStack {
            // Change screen background color
            Color.black.ignoresSafeArea()
            
            VStack {
                Spacer()
                Text("output numbers here")
                    .font(.largeTitle)
                    .foregroundColor(.gray)
                Spacer()
                VStack {
                    HStack {
                        ButtonKeyView(keyNumber: "1")
                        ButtonKeyView(keyNumber: "2")
                        ButtonKeyView(keyNumber: "3")
                        ButtonKeyView(keyNumber: "➗")
                    }
                    HStack {
                        ButtonKeyView(keyNumber: "4")
                        ButtonKeyView(keyNumber: "5")
                        ButtonKeyView(keyNumber: "6")
                        ButtonKeyView(keyNumber: "✖️")
                    }
                    HStack {
                        ButtonKeyView(keyNumber: "7")
                        ButtonKeyView(keyNumber: "8")
                        ButtonKeyView(keyNumber: "9")
                        ButtonKeyView(keyNumber: "➖")
                    }
                    HStack {
                        ButtonKeyView(keyNumber: ".")
                        ButtonKeyView(keyNumber: "0")
                        ButtonKeyView(keyNumber: "=")
                        ButtonKeyView(keyNumber: "➕")
                    }
                }
                .font(.system(size: 50, weight: .bold))
            }
        }
        // Alternate way to change background color
        // .frame(maxWidth: .infinity, maxHeight: .infinity) // 1
        // .background(Color.black)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}
