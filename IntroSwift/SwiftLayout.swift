//
//  SwiftLayout.swift
//  IntroSwift
//
//  Created by Juli Yanti on 06/06/25.
//

import SwiftUI

struct SwiftLayout: View {
    var body: some View {
        VStack(spacing: 40) {
            Spacer()
            // VStack Example
            VStack(spacing: 10) {
                Text("VStack")
                    .font(.headline)
                Text("One")
                Text("Two")
                Text("Three")
            }
            .padding()
            .background(Color.yellow.opacity(0.3))
            .cornerRadius(10)
            
            // HStack Example
            HStack(spacing: 10) {
                Text("H")
                Text("S")
                Text("T")
                Text("A")
                Text("C")
                Text("K")
            }
            .padding()
            .background(Color.green.opacity(0.3))
            .cornerRadius(10)
            
            // ZStack Example
            ZStack {
                Rectangle()
                    .fill(Color.blue.opacity(0.3))
                    .frame(width: 150, height: 150)
                    .cornerRadius(10)
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                    .font(.system(size: 50))
                Text("ZStack")
                    .font(.title)
                    .foregroundColor(.black)
            }
            
            Spacer()
        }.padding()
    }
}

#Preview {
    SwiftLayout()
}
