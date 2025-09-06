//
//  SwiftCardExample.swift
//  IntroSwift
//
//  Created by Juli Yanti on 05/09/25.
//

import SwiftUI

struct CardView: View {
    var title: String
    var subtitle: String
    var imageName: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(systemName: imageName)
                .resizable()
                .padding(20)
                .scaledToFit()
                .frame(height: 120)
                .frame(maxWidth: .infinity)
                .background(Color.blue.opacity(0.2))
                .cornerRadius(16)
            
            Text(title)
                .font(.title2)
                .fontWeight(.bold)
            
            Text(subtitle)
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            Spacer(minLength: 0)
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(20)
        .shadow(color: .black.opacity(0.1), radius: 8, x: 0, y: 4)
    }
}

#Preview {
    CardView(
        title: "SwiftUI Card",
        subtitle: "Reusable UI component",
        imageName: "swift"
    )
    .padding()
}
        


