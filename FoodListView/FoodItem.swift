//
//  FoodItem.swift
//  FoodListView
//
//  Created by Faheeam Ahmed on 09/09/2024.
//

import Foundation

class FoodItem: Identifiable, Hashable, Equatable {
    func hash(into hasher: inout Hasher) {
        
    }
    
    static func == (lhs: FoodItem, rhs: FoodItem) -> Bool {
        if lhs.name == rhs.name && lhs.totalCalories == rhs.totalCalories {
            return true
        }
        return false
    }
    
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
