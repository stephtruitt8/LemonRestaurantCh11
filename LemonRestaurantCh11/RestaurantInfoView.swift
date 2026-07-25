//
//  RestaurantInfoView.swift
//  LemonRestaurantCh11
//
//  Created by Stephen Truitt on 7/24/26.
//

import SwiftUI

struct RestaurantInfoView: View {
    let socialMedia = [
        "Instagram": "@lemonrista",
        "Facebook": "facebook.com/lemonrista",
        "Tiktok": "@restaurant.lemonrista"
    ]
    
    let menuCategories = [
        "Popular Picks": "",
        "Juice and Smoothies": "",
        "Wraps": "",
        "Salads": "",
        "Desserts": ""
    ]
    
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Menu Categories")) {
                    ForEach(Array(menuCategories), id:\.key) { (key, value) in
                        HStack {
                            Text(key)
                                .font(.headline)
                            Spacer()
                            Text(value)
                            
                        }
                    }
                }
                
                
                Section(header: Text("Social Media")) {
                    ForEach(Array(socialMedia), id:\.key) { (key, value) in
                        HStack {
                            Text(key)
                                .font(.headline)
                            Spacer()
                            Text(value)
                        }
                        
                    }
                }
                
                
            }
            .navigationTitle("Restaurant Infomation")
        }
    }
}
#Preview {
    RestaurantInfoView()
}
