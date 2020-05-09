//
//  ContentView.swift
//  Calculator
//
//  Created by YouHsuan on 2020/5/9.
//  Copyright © 2020 youhsuan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            CalculatorButton(title: "1",
                             size: CGSize(width: 88, height: 88),
                             backgroundColor: Color.orange,
                             action:{ print("Button: 1")})
            
            CalculatorButton(title: "2",
                             size: CGSize(width: 88, height: 88),
            
                             backgroundColor: Color.orange,
            
                             action: {print("Button: 2")})
            
            CalculatorButton(title: "3",
            
                             size: CGSize(width: 88, height: 88),
            
                             backgroundColor: Color.orange,
            
                             action: {print("Button: 3")})
            
            CalculatorButton(title: "+",
            
                             size: CGSize(width: 88, height: 88),
            
                             backgroundColor: Color.black,
            
                             action: {print("Button: +")})
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CalculatorButton: View {
    let fontSize: CGFloat = 38
    let title: String
    let size: CGSize
    let backgroundColor: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: fontSize))
                .foregroundColor(.white)
                .frame(width: 88, height: 88)
                .background(backgroundColor)
                .cornerRadius(size.width / 2)
        }
    }
}
