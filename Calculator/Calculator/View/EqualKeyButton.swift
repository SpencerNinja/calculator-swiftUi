//
//  EqualKeyButton.swift
//  Calculator
//
//  Created by Spencer Hurd on 1/23/22.
//

import SwiftUI

struct EqualKeyButton: View {
    
    @EnvironmentObject var characterViewModel: CharacterViewModel
    let keyNumber: String
    
    var body: some View {
        
        Button {
            characterViewModel.convertToList()
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

struct EqualKeyButton_Previews: PreviewProvider {
    static var previews: some View {
        EqualKeyButton(keyNumber: "1")
            .previewLayout(.sizeThatFits)
    }
}
