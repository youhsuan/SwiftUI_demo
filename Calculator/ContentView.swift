//
//  ContentView.swift
//  Calculator
//
//  Created by YouHsuan on 2020/5/9.
//  Copyright © 2020 youhsuan. All rights reserved.
//

import SwiftUI
struct CalculatorButtonRow : View {
    let row: [CalculatorButtonItem]
    var body: some View {
        HStack{
            ForEach(row, id: \.self) { item in
                CalculatorButton(title: item.title,
                                 size: item.size,
                                 backgroundColor: item.backgroundColor,
                                 action:{ print(item.title)})
            }
        }
    }
}
struct ContentView: View {
    var body: some View {
        VStack(spacing: 8) {
            CalculatorButtonRow(row: [
                .command(.clear), .command(.flip), .command(.percent), .op(.divide)]
            )
            CalculatorButtonRow(row: [
                .digit(7), .digit(8), .digit(9), .op(.multiply)]
            )
            CalculatorButtonRow(row: [
            .digit(4), .digit(5), .digit(6), .op(.minus)]
            )
            CalculatorButtonRow(row: [
                .digit(1), .digit(2), .digit(3), .op(.plus)]
            )
            CalculatorButtonRow(row: [
                .digit(0), .dot, .op(.equal)
            ])
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
                .frame(width: size.width, height: size.height)
                .background(backgroundColor)
                .cornerRadius(size.width / 2)
        }
    }
}

enum CalculatorButtonItem {
    enum Op: String {
        case plus = "+"
        case minus = "-"
        case divide = "÷"
        case multiply = "×"
        case equal = "="
    }
    enum Command: String {
        case clear = "AC"
        case flip = "+/-"
        case percent = "%"
    }
    case digit(Int)
    case dot
    case op(Op)
    case command(Command)
}

extension CalculatorButtonItem: Hashable {
    var title: String {
        switch self {
        case .digit(let value): return String(value)
        case .dot: return "."
        case .op(let op): return op.rawValue
        case .command(let command): return command.rawValue
        }
    }
    var size: CGSize {
        CGSize(width: 88, height: 88)
    }
    var backgroundColor: Color {
        switch self {
        case .digit, .dot: return Color.orange
        case .op: return Color.black
        case .command: return Color.black
        }
    }
}
