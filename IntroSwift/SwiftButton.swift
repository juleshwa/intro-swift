//
//  SwiftButton.swift
//  IntroSwift
//
//  Created by Juli Yanti on 06/06/25.
//

import SwiftUI

struct SwiftButton: View {
    var name: String = "Juli"
    var body: some View {
        Button(action: {
            print("Button tapped!")
            print(name)
        }) {
        Text("Tap Me")
            .font(.title)
            .frame(width: 200, height: 75)
            .background(Color.pink)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        Button("Hello Button") {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
        }.frame(width: 300, height: 50).background(Color.pink)
    }
}

#Preview {
    SwiftButton()
}
