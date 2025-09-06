//
//  ViewModel.swift
//  IntroSwift
//
//  Created by Juli Yanti on 06/09/25.
//

import Foundation
import SwiftUI

class FruitViewModel: ObservableObject {
    // @Published = whenever this changes, the view updates automatically
    @Published var fruits: [Fruit] = []
    
    init() {
        loadFruits()
    }
    
    func loadFruits() {
        // Simulate fetching data
        let fruitNames = ["Apple", "Banana", "Cherry", "Date", "Elderberry"]
        self.fruits = fruitNames.map { Fruit(name: $0) }
    }
}
