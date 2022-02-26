//
//  EqualKeyButton.swift
//  Calculator
//
//  Created by Spencer Hurd on 1/23/22.
//

import SwiftUI

struct OperatorKeyButton: View {
    
    @EnvironmentObject var calculatorViewModel: CalculatorViewModel
    
    let keyOperator: String
    
    var body: some View {
        
        Button {
            calculatorViewModel.updateOperator(keyPressed: keyOperator)
        } label: {
            Text(keyOperator)
                .font(.system(size: 50, weight: .bold, design: .monospaced))
                .foregroundColor(Color.black)
        }
        .frame(width: 75, height: 75)
        .background(Color.green)
        .cornerRadius(10)
        //.shadow(color: Color.yellow, radius: 10, x: 3, y: 3)
        .padding(5)
        
    }
    
}

struct EqualKeyButton_Previews: PreviewProvider {
    static var previews: some View {
        OperatorKeyButton(keyOperator: "1")
            .previewLayout(.sizeThatFits)
    }
}
