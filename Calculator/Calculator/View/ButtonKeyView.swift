//
//  KeyView.swift
//  Calculator
//
//  Created by Spencer Hurd on 1/22/22.
//

import SwiftUI

struct ButtonKeyView: View {
    
    let keyNumber: String
    
    var body: some View {
        Text(keyNumber)
            .frame(width: 75, height: 75)
            .background(Color.green)
            .cornerRadius(10)
//            .shadow(color: Color.yellow, radius: 10, x: 3, y: 3)
            .padding(5)
    }
    
}

struct KeyView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonKeyView(keyNumber: "1")
    }
}
