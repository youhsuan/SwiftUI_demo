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
        Text("qwert")
            .font(.custom("Copperplate", size: 48))
            .foregroundColor(.white)
            .background(Color.black)
            .padding()
            .background(Color.blue)
            .padding()
            .background(Color.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
