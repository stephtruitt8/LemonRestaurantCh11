//
//  DishDetailView.swift
//  LemonRestaurantCh11
//
//  Created by Stephen Truitt on 7/25/26.
//

import SwiftUI



struct DishDetailView: View {
    let dish: Dish
    
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                Image(dish.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 250)
                    .clipped()
                
                VStack(alignment: .leading, spacing: 6){
                    Text(dish.name)
                        .bold()
                        .font(.title)
                    
                    Text(dish.category)
                        .font(.system(size: 18))
                        .foregroundStyle(.gray)
                    
                    
                    Text("$\(dish.price, specifier: "%.2f")")
                        .bold()
                        .foregroundColor(.green)
                    
                    Text(dish.description)
                        .font(.system(size: 16))
                        .foregroundStyle(.gray)
                        
                }
                
            }
        }
        .navigationTitle(dish.name)
    }
}

#Preview {
    DishDetailView(
        dish: Dish(name:"Margherita Pizza", category:"ENTREES", price: 11.99, description: "Classic Margherita pizza with tomato, mozzarella, and basil", imageName: "PizzaImage")
    )
}
