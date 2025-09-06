//
//  FruitView.swift
//  IntroSwift
//
//  Created by Juli Yanti on 06/09/25.
//

import SwiftUI

struct FruitView: View {
    @StateObject private var viewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.fruits) { fruit in
                Text(fruit.name)
            }
            .navigationTitle("Fruits")
        }
    }
}

#Preview {
    FruitView()
}
