//
//  AddDishView.swift
//  LemonRestaurantCh11
//
//  Created by Stephen Truitt on 8/1/26.
//

import SwiftUI

struct AddDishView: View {
    @Binding var dish: Dish
    @Binding var dishes: [Dish]
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Form {
            Section(header: Text("Dish Infomation")) {
                TextField("Name", text: $dish.name)
                TextField("Category", text: $dish.category)
                TextField("Price", value: $dish.price, format: .number)
                TextField("Description", text: $dish.description)
                TextField("Image Name", text: $dish.imageName)
                    .textInputAutocapitalization(.never)
                
            }
            
            Button("Add Dish") {
                dishes.append(dish)
                
                dish = Dish(
                    name: "",
                    category: "",
                    price: 0,
                    description: "",
                    imageName: ""
                )
                
                dismiss()
            }
        }
    }
}

#Preview {
    @State var sampleDish = Dish(
        name: "",
        category: "",
        price: 0,
        description: "",
        imageName: ""
    )
    @State var sampleDishes: [Dish] = []
    
    AddDishView(dish: $sampleDish, dishes: $sampleDishes)
}
