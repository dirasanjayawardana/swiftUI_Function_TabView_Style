//
//  WelcomeView.swift
//  FunctionTabStyle
//
//  Created by MACBOOK PRO on 18/04/24.
//

import SwiftUI

struct WelcomeComponent: View {
    
    func welcomeMessage() -> String {
        "Welcome to my life"
    }
    
    var body: some View {
        Text(welcomeMessage())
            .font(.system(.title, design: .rounded))
    }
}

#Preview {
    WelcomeComponent()
}
