//
//  MenuView.swift
//  LemonRestaurantCh11
//
//  Created by Stephen Truitt on 7/24/26.
//

import SwiftUI

struct MenuView: View {
    
    var menu = ["Lemonade", "Hot Dogs", "French Fries", "Chips", "Soda"]
    
    var body: some View {
        NavigationStack {
            VStack {
               Text("Lemonrista")
                    .font(.system(size: 50, weight: .heavy))
                    .multilineTextAlignment(.center)
                    .padding(.top, 45)
                    .foregroundStyle(Color.red)
                
               Text("The home of The Lemon Bomb ")
                    .font(Font.system(size: 20,))
                
               Image(systemName: "fork.knife.circle.fill")
                    .padding()
                    .font(.system(size: 130, weight: .heavy))
                    .foregroundColor(.red)
                
               Spacer()
                
               VStack {
                    NavigationLink {
                        DrinkSizeSwitcher()
                    } label: {
                        HStack {
                            Image(systemName: "cup.and.saucer.fill")
                            Text("Drink Size")
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(12)
                        
                    }
                    .padding(5)
                   
                    NavigationLink {
                       DataListView()
                   } label: {
                       HStack {
                           Image(systemName: "list.bullet")
                           Text("Menu Items")
                       }
                       .padding()
                       .frame(maxWidth: .infinity)
                       .background(Color.green)
                       .foregroundColor(Color.white)
                       .cornerRadius(12)
                   }
                   .padding(5)
                   
                   NavigationLink {
                       Text("View 3")
                   } label : {
                       HStack {
                           Image(systemName: "leaf.fill")
                           Text("About Lemonrista")
                       }
                       .padding()
                       .frame(maxWidth: .infinity)
                       .background(Color.green)
                       .foregroundColor(Color.white)
                       .cornerRadius(12)
                       
                   }
                   .padding(5)
                   
                   NavigationLink {
                       Text("View 4")
                   } label: {
                       HStack {
                           Image(systemName: "bell.fill")
                           Text("Bill")
                       }
                       .padding()
                       .frame(maxWidth: .infinity)
                       .background(Color.green)
                       .foregroundColor(Color.white)
                       .cornerRadius(12)
                   }
                   .padding(5)
                   
                   NavigationLink {
                       Text("View 5")
                   } label: {
                       HStack {
                           Image(systemName: "person.crop.circle.fill")
                           Text("Registration")
                       }
                       .padding()
                       .frame(maxWidth: .infinity)
                       .background(Color.green)
                       .foregroundColor(Color.white)
                       .cornerRadius(12)
                   }
                   .padding(5)
                   
                }
               .padding(.horizontal, 45)
               
                Spacer()
                
                Text("Copyright © 2021 Lemonrista. All rights reserved.")
                    .font(.footnote)
                    .foregroundColor(.black)
                    .padding(.horizontal, 45)
                    .padding(.bottom, 10)
                
            }
            // .navigationTitle("Home")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.yellow.opacity(0.45))
            
        }
        
    }
}

#Preview {
    MenuView()
}
