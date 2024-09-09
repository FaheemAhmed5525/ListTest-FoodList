//
//  FoodItem.swift
//  FoodListView
//
//  Created by Faheeam Ahmed on 09/09/2024.
//

import Foundation

class FoodItem: Identifiable {
    let id = UUID()
    let name: String
    let totalCalories: Float
    let image : String
    
    public init(name: String, totalCalories: Float, image: String) {
        self.name = name
        self.totalCalories = totalCalories
        self.image = image
    }
}
