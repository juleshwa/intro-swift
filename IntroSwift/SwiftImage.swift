//
//  SwiftImage.swift
//  IntroSwift
//
//  Created by Juli Yanti on 06/06/25.
//

import SwiftUI

struct SwiftImage: View {
    var body: some View {
        VStack {
                    Image("exampleImage")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)
                        .cornerRadius(20)
                        .shadow(radius: 10)
                        .padding()
                        .onTapGesture {
                            print("Image tapped")
                        }
                    
                    Text("This is an image in SwiftUI")
                        .font(.headline)
                }
    }
}

#Preview {
    SwiftImage()
}
