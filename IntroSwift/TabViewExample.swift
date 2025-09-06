//
//  TestView.swift
//  IntroSwift
//
//  Created by Juli Yanti on 09/06/25.
//

import SwiftUI

struct TabViewExample: View {
    var body: some View {
        TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
            SwiftImage().tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 1")/*@END_MENU_TOKEN@*/ }.tag(1)
            SwiftLayout().tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 2")/*@END_MENU_TOKEN@*/ }.tag(2)
        }
    }
}

#Preview {
    TabViewExample()
}
