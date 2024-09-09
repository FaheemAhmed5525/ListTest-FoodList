//
//  ContentView.swift
//  FoodListView
//
//  Created by Faheeam Ahmed on 09/09/2024.
//

import SwiftUI

struct ContentView: View {
    let foodItems = [
        FoodItem(name: "Apple", totalCalories: 76.2, image: "Apple"),
        FoodItem(name: "Banana", totalCalories: 102.0, image: "Banana"),
        FoodItem(name: "Mango", totalCalories: 138.5, image: "Mango"),
        FoodItem(name: "Orange", totalCalories: 85.0, image: "Orange")]
    var body: some View {
        VStack {
            NavigationStack {
                List(foodItems) { item in
                    ItemCellView(item: item)
                }
                .navigationTitle("Fruits")
            }
        }
        .padding(0)
    }
}

#Preview {
    ContentView()
}


struct ItemCellView: View {
    
    let item : FoodItem
    
    var body: some View {
        HStack(alignment: .top) {
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .frame(width: 102, height: 70)
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.green)
                Text("Average Calories: \(item.totalCalories.formatted())")
            }
            .padding(0)
        }
        .padding(8)
    }
}
