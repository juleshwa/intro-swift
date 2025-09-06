//
//  SwiftImage.swift
//  IntroSwift
//
//  Created by Juli Yanti on 06/06/25.
//

import SwiftUI

import SwiftUI

struct SwiftImage: View {
    let address = "https://plus.unsplash.com/premium_photo-1756066699592-eb346b61309b?q=80&w=1574&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    
    var body: some View {
        VStack(spacing: 20) {
            // Local image
            Image("ImageBaru")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .cornerRadius(20)
                .shadow(radius: 10)
                .onTapGesture {
                    print("Local image tapped")
                }
            
            Text("This is an image in SwiftUI")
                .font(.headline)
            
            // Async network image
            if let url = URL(string: address) {
                AsyncImage(url: url) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 500, height: 300)
                        .cornerRadius(20)
                        .shadow(radius: 5)
                } placeholder: {
                    ProgressView()
                        .frame(width: 200, height: 200)
                }
            } else {
                Text("Invalid URL")
            }
        }
        .padding()
    }
}

#Preview {
    SwiftImage()
}
