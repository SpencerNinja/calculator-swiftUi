//
//  EqualKeyButtonView.swift
//  Calculator
//
//  Created by Spencer Hurd on 2/25/22.
//

import SwiftUI

struct EqualKeyButton: View {
    
    @EnvironmentObject var calculatorViewModel: CalculatorViewModel
    
    let equalKey: String
    
    var body: some View {
        
        Button {
            calculatorViewModel.calculateOperation()
        } label: {
            Text(equalKey)
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

struct EqualKeyButtonView_Previews: PreviewProvider {
    static var previews: some View {
        EqualKeyButton(equalKey: "=")
            .previewLayout(.sizeThatFits)
    }
}
