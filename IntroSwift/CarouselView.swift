//
//  CarouselView.swift
//  IntroSwift
//
//  Created by Juli Yanti on 06/09/25.
//

import SwiftUI

struct CarouselView: View {
    let cards = [
            ("SwiftUI", "Build UI with less code", "swift"),
            ("iOS", "Design for iPhone & iPad", "iphone"),
            ("Mac", "Powerful desktop apps", "laptopcomputer"),
            ("WatchOS", "Apps for Apple Watch", "applewatch"),
            ("iPadOS", "Tablet experience", "ipad")
        ]
        
    @State private var selectedIndex = 0
    let timer = Timer.publish(every: 2, on: .main, in: .common).autoconnect() // change 3 for speed
    
    var body: some View {
        VStack {
            TabView(selection: $selectedIndex) {
                ForEach(0..<cards.count, id: \.self) { index in
                    CardView(
                        title: cards[index].0,
                        subtitle: cards[index].1,
                        imageName: cards[index].2
                    )
                    .padding(.horizontal, 20)
                    .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            .frame(height: 300)
            .onReceive(timer) { _ in
                withAnimation {
                    selectedIndex = (selectedIndex + 1) % cards.count
                }
            }
            
            // Optional: Custom page indicator
            Text("Card \(selectedIndex + 1) of \(cards.count)")
                .font(.subheadline)
                .foregroundColor(.secondary)
                .padding(.top, 10)
            
            HStack(spacing: 8) {
                ForEach(0..<cards.count, id: \.self) { index in
                    Circle()
                        .fill(selectedIndex == index ? Color.blue : Color.gray.opacity(0.5))
                        .frame(width: 10, height: 10)
                }
            }.padding(.top, 10)
        }
    }
}

#Preview {
    CarouselView()
}
