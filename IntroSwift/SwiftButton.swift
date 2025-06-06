//
//  SwiftButton.swift
//  IntroSwift
//
//  Created by Juli Yanti on 06/06/25.
//

import SwiftUI

struct SwiftButton: View {
    var body: some View {
        Button(action: {
            print("Button tapped!")
        }) {
            Text("Tap Me")
                .font(.title)
                .frame(width: 200, height: 75)
                .background(Color.pink)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }
}

#Preview {
    SwiftButton()
}
