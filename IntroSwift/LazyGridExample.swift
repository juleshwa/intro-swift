//
//  LazyGridExample.swift
//  IntroSwift
//
//  Created by Juli Yanti on 06/09/25.
//

import SwiftUI

struct LazyGridExample: View {
    let cards = [
            ("SwiftUI", "Build UI with less code", "swift"),
            ("iOS", "Design for iPhone & iPad", "iphone"),
            ("Mac", "Powerful desktop apps", "laptopcomputer"),
            ("WatchOS", "Apps for Apple Watch", "applewatch"),
            ("iPadOS", "Tablet experience", "ipad")
        ]
        
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(cards, id: \.0) { card in
                    CardView(title: card.0, subtitle: card.1, imageName: card.2)
                }
            }
            .padding()
        }
    }
}

#Preview {
    LazyGridExample()
}
