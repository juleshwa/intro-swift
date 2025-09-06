//
//  ExampleBindingData.swift
//  IntroSwift
//
//  Created by Juli Yanti on 05/09/25.
//

import SwiftUI

struct BindingExample: View {
    @State private var isOn: Bool = false   // state owned by parent

    var body: some View {
        VStack(spacing: 20) {
            Toggle("Enable feature", isOn: $isOn) // binding to state
                .padding()

            // Passing binding to child view
            ChildToggleView(isOn: $isOn)

            Text("Current value: \(isOn.description)")
                .font(.headline)
        }
        .padding()
    }
}

struct ChildToggleView: View {
    @Binding var isOn: Bool   // receives binding from parent

    var body: some View {
        Button(action: {
            isOn.toggle() // modifies parent state directly
        }) {
            Text(isOn ? "Turn Off" : "Turn On")
                .padding()
                .background(isOn ? Color.green : Color.red)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }
}

#Preview {
    BindingExample()
}
