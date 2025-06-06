//
//  SwiftNavigation.swift
//  IntroSwift
//
//  Created by Juli Yanti on 06/06/25.
//

import SwiftUI

struct SwiftNavigation: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink(destination: SwiftText()) {
                    Text("Go to Text Example")
                }
                NavigationLink(destination: SwiftImage()) {
                    Text("Go to Image Example")
                }
                NavigationLink(destination: SwiftLayout()) {
                    Text("Go to Layout Example")
                }
                NavigationLink(destination: SwiftButton()) {
                    Text("Go to Button Example")
                }
            }
            .navigationTitle("Navigation View")
        }
    }
}

#Preview {
    SwiftNavigation()
}
