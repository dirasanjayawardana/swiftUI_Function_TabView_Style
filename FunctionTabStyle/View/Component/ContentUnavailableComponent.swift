//
//  ContentUnavailableComponent.swift
//  FunctionTabStyle
//
//  Created by MACBOOK PRO on 18/04/24.
//

import SwiftUI

struct ContentUnavailableComponent: View {
    var body: some View {
        // ContentUnavailableView(
        //     "Connection timeout",
        //     systemImage: "wifi.slash",
        //     description: Text("Check your internet conection")
        // )
        
        ContentUnavailableView(label: {
            Label("No Mail", systemImage: "tray.fill")
        }, description: {
            Text("Check your inbox")
        }, actions: {
            Button(action: {
                
            }, label: {
                Text("Refresh")
            })
            .buttonStyle(.borderedProminent)
        })
    }
}

#Preview {
    ContentUnavailableComponent()
}
