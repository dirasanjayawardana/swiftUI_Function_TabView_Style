//
//  SwiftUIView.swift
//  FunctionTabStyle
//
//  Created by MACBOOK PRO on 18/04/24.
//

import SwiftUI

struct GreetingComponent: View {
    
    @State private var inputName: String = ""
    
    func sayHello(name: String) -> String {
        return "Hello, \(name)"
    }
    
    func sayHelloWithFor(for name: String) -> String {
        return "Hello, \(name)"
    }
    
    func sayHelloWithoutArgument(_ name: String) -> String {
        return "Hello, \(name)"
    }
    
    var body: some View {
        VStack {
            TextField("Enter your name", text: $inputName)
            Text(sayHello(name: inputName))
            Text(sayHelloWithFor(for: inputName))
            Text(sayHelloWithoutArgument(inputName))
        }
    }
}

#Preview {
    GreetingComponent()
}
