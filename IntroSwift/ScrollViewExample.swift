//
//  ScrollViewExample.swift
//  IntroSwift
//
//  Created by Juli Yanti on 06/09/25.
//

import SwiftUI

struct ScrollViewExample: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                CardView(
                    title: "SwiftUI",
                    subtitle: "Build UI with less code",
                    imageName: "swift"
                )
                
                CardView(
                    title: "iOS",
                    subtitle: "Design for iPhone & iPad",
                    imageName: "iphone"
                )
                
                CardView(
                    title: "Mac",
                    subtitle: "Powerful desktop apps",
                    imageName: "laptopcomputer"
                )
            }
            .padding()
        }
    }
}

#Preview {
    ScrollViewExample()
}
