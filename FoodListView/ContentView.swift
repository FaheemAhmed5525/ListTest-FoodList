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
                    NavigationLink(value: item) {
                        ItemCellView(item: item)
                    }
                    
                }
                .navigationTitle("Fruits")
                .navigationDestination(for: FoodItem.self) {item in
                    
                    VStack {
                        FoodItemsDetails(item: item)
                        
                    }
                }
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

struct FoodItemsDetails: View {
    
    let item: FoodItem
    
    var body: some View {
        Image(item.image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(RoundedRectangle(cornerRadius: 12))
        HStack(alignment: .top) {
            Text("Name: ")
                .fontWeight(.bold)
                .font(.system(size: 24))
                .foregroundColor(.green)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text(item.name)
                .foregroundColor(.green)
                .font(.system(size: 24))
                .frame(maxWidth: .infinity, alignment: .trailing)
        }
        HStack(alignment: .top) {
            Text("Average Calories: ")
                .fontWeight(.bold)
                .foregroundColor(.green)
                .font(.system(size: 24))
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("\(item.totalCalories)")
                .foregroundColor(.green)
                .font(.system(size: 24))
                .frame(maxWidth: .infinity, alignment: .trailing)
            
        }
    }
}
