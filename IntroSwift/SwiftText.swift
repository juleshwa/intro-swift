//
//  SwiftText.swift
//  IntroSwift
//
//  Created by Juli Yanti on 06/06/25.
//

import SwiftUI

struct SwiftText: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            // Single-line text
            Text("This is a single-line text")
                .lineLimit(1)
                .truncationMode(.tail)
                .font(.headline)
            
            // Multi-line text
            Text("This is a multi-line text example. It will wrap onto the next line if the text is too long to fit in one line.")
                .lineLimit(nil) // Allows unlimited lines
                .font(.body)
        }
        .padding(25)
        
        Text("This is a multi-line text example. It will wrap onto the next line if the text is too long to fit in one line.").foregroundColor(.pink).font(.largeTitle).lineLimit(nil).padding(30)
    }
}

#Preview {
    SwiftText()
}
