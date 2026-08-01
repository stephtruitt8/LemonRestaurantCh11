//
//  DishListView.swift
//  LemonRestaurantCh11
//
//  Created by Stephen Truitt on 7/27/26.
//

import SwiftUI

struct DishListView: View {
    @State private var selectedCategory:String = "All"
    @State private var showAddDishView:Bool = false
    @State private var newDish = Dish(
        name: "",
        category: "",
        price: 0.0,
        description: "",
        imageName: ""
    )
    
    @State private var dishes:[Dish] = [
        Dish(
            name: "Pancakes",
            category: "Breakfast",
            price: 6.50,
            description: "Fluffy pancakes topped with butter and maple syrup.",
            imageName: "pancake-image"
        ),
        Dish(
            name: "CheesyHam Muffin",
            category: "Breakfast",
            price: 6.50,
            description: "Soft warm Muffin with Ham and cheese.",
            imageName: "muffin-image"
        ),
        Dish(
            name: "Acai Bowl",
            category: "Breakfast",
            price: 6.50,
            description: "Fresh Fruit Bowl with Granola and Yogurt",
            imageName: "acai-image"
        ),
        Dish(
            name: "Breakfast Burrito",
            category: "Breakfast",
            price: 6.50,
            description: "Warm corn tortilla wrapped with egg, sasuage, cheese and pico de gallo.",
            imageName: "burrito-image"
        ),
        Dish(
            name: "Pizza",
            category: "Main Courses",
            price: 6.50,
            description: "Hot cheese pizza with your choice of toppings",
            imageName: "pizza-image"
        ),
        Dish(
            name: "Chicken Alfredo",
            category: "Main Courses",
            price: 6.50,
            description: "Classic pasta dish with homemade Alfredo sauce and grilled chicken",
            imageName: "pastaimage"
        ),
        Dish(
            name: "Caesar Salad",
            category: "Salads",
            price: 6.50,
            description: "Classic chopped romaine lettuce, croutons, parmesan and Caesar dressing",
            imageName: "saladimage"
        ),
        Dish(
            name: "Chocolate Lava Cake",
            category: "Desserts",
            price: 6.50,
            description: "Sweet fluffy cake that oozes hot milk chocolate",
            imageName: "cakeimage"
        ),
        Dish(
            name: "Strawberry Milkshake",
            category: "Drinks",
            price: 6.50,
            description: "An Old Fashioned Ice cream shake mixed with fresh strawberries grown from our own garden",
            imageName: "shakeimage"
        )
    ]
    
    // Computed property
    var filteredDishes:[Dish] {
        if selectedCategory == "All" {
            return dishes
        } else {
            return dishes.filter { $0.category == selectedCategory}
        }
    }
    
    
    var body: some View {
        NavigationView {
            
            
            VStack {
                Text("Find The Best Food In Town!")
                    .font(.system(size: 35, weight: .bold))
                    .fontDesign(Font.Design.serif)
                    .multilineTextAlignment(.center)
                
                VStack {
                    Text("Discover Food")
                        .font(.system(size: 30, design: .monospaced))
                    
                    ScrollView(.horizontal,showsIndicators: false ){
                        HStack {
                            ForEach(["All", "Breakfast", "Salads", "Main Courses", "Desserts", "Drinks"], id:\.self) { category in Text(category)
                                    .padding(.vertical, 10)
                                    .padding(.horizontal, 10)
                                    .background(
                                        selectedCategory == category
                                        ? Color.green
                                        : Color.green.opacity(0.5)
                                    )
                                    .animation(.easeInOut(duration: 0.3), value: selectedCategory)
                                    .clipShape(Capsule())
                                    .onTapGesture {
                                        selectedCategory = category
                                    }
                            }
                        }
                    }
                    
                }
                .font(.system(size: 25, weight: .bold))
                .padding()
                
                
                ScrollView {
                    LazyVGrid(columns: [GridItem(), GridItem()]){
                        ForEach(filteredDishes, id:\.name) { dish in
                            NavigationLink(destination: DishDetailView(dish: dish)) {
                                VStack {
                                    Image(dish.imageName)
                                        .resizable()
                                        .scaledToFill()
                                        .frame( height: 100)
                                        .clipped()
                                    
                                    
                                    VStack {
                                        Text(dish.name)
                                            .font(.system(size:15))
                                            .bold()
                                            .foregroundStyle(Color.black)
                                        
                                        Text(dish.description)
                                            .lineLimit(2)
                                            .foregroundStyle(Color.black)
                                        
                                        Text("\(dish.price, specifier: "%.2f")")
                                            .bold()
                                            .foregroundStyle(Color.black)
                                    }
                                }
                                .padding(10)
                                .background(Color.black.opacity(0.07))
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .shadow(color: Color.black.opacity(0.2), radius: 10)
                            }
                        }
                        
//                        Text("Hello Cohort 11")
//                            .padding()
                    }
                }
            }
        }
        
        HStack {
            Button(){
                // Logic here
                showAddDishView = true
            } label: {
                HStack {
                    Image(systemName: "plus.circle.fill")
                    Text("Add Dish")
                        .fontWeight(.bold)
                }
            }
            .buttonStyle(.bordered)
            .tint(Color.green)
        }
        .sheet(isPresented: $showAddDishView) {
            AddDishView(dish: $newDish, dishes: $dishes)
        }
    }
}

#Preview {
    DishListView()
}
