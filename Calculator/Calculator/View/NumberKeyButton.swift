//
//  KeyView.swift
//  Calculator
//
//  Created by Spencer Hurd on 1/22/22.
//

import SwiftUI

struct NumberKeyButton: View {
    
    @EnvironmentObject var calculatorViewModel: CalculatorViewModel
    let keyNumber: String
    
    var body: some View {
        
        Button {
            calculatorViewModel.updateOperand(keyPressed: keyNumber)
        } label: {
            Text(keyNumber)
                .font(.system(size: 50, weight: .bold, design: .monospaced))
                .foregroundColor(.white)
        }
        .frame(width: 75, height: 75)
        .background(Color.green)
        .cornerRadius(10)
        //.shadow(color: Color.yellow, radius: 10, x: 3, y: 3)
        .padding(5)
        
    }
    
}

struct KeyView_Previews: PreviewProvider {
    static var previews: some View {
        NumberKeyButton(keyNumber: "1")
            .previewLayout(.sizeThatFits)
    }
}
