//
//  AddNumberComponent.swift
//  FunctionTabStyle
//
//  Created by MACBOOK PRO on 18/04/24.
//

import SwiftUI

struct AddNumberComponent: View {
    
    @State private var number1: String = ""
    @State private var number2: String = ""
    @State private var resultText: String = ""
    
    private func add(firstNumber: Double, secondNumber: Double) -> Double {
        return (firstNumber + secondNumber)
    }
    
    private func generateResult() {
        if let num1 = Double(number1), let num2 = Double(number2) {
            let result = add(firstNumber: num1, secondNumber: num2)
            resultText = String(format: "%.2f", result)
        } else {
            resultText = "invalid input"
        }
    }
    
    var body: some View {
        VStack(spacing: 40) {
            TextField("Insert first number", text: $number1)
                .keyboardType(.decimalPad)
            
            TextField("Insert second number", text: $number2)
            
            Text("Result = \(resultText)")
                .font(.title)
            
            Button {
                generateResult()
            } label: {
                Text("Add")
            }
            .buttonStyle(BorderedButtonStyle())
        }
        .padding()
    }
}

#Preview {
    AddNumberComponent()
}
