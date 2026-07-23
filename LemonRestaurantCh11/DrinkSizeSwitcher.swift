//
//  DrinkSizeSwitcher.swift
//  LemonRestaurantCh11
//
//  Created by Stephen Truitt on 7/22/26.
//

import SwiftUI

struct DrinkSizeSwitcher: View {
    @State private var counter = 0
    @State private var size = 1
    
    var body: some View {
        VStack {
            ZStack {
                Color.yellow
                    .ignoresSafeArea()
                switch size{
                case 1:
                    Text("🥤")
                        .font(.system(size: 100))
                case 2:
                    Text("🥤")
                        .font(.system(size: 140))
                case 3:
                    Text("🥤")
                        .font(.system(size: 170))
                default:
                    Text("Error")
                }
            }
            .frame(height: 190)
            .animation(.easeInOut(duration: 0.5), value: size)
            /* */
            
            switch size{
            case 1:
                Text("Small Drink")
                    .font(.system(size: 30))
                    .padding(10)
                    .bold()
    
            case 2:
                Text("Medium Drink")
                    .font(.system(size: 30))
                    .padding(10)
                    .bold()
            case 3:
                Text("Large Drink")
                    .font(.system(size: 30))
                    .padding(10)
                    .bold()
            default:
                Text("Error")
                    
            }
                
            
            HStack {
                Button("Small") {
                    size = 1
                }
                .buttonStyle(.borderedProminent)
                .tint(.green)
                .buttonBorderShape(.roundedRectangle(radius: 12))
                
                Button("Medium") {
                    size = 2
                }
                .buttonStyle(.borderedProminent)
                .tint(.green)
                .buttonBorderShape(.roundedRectangle(radius: 12))
                
                Button("Large") {
                    size = 3
                }
                .buttonStyle(.borderedProminent)
                .tint(.green)
                .buttonBorderShape(.roundedRectangle(radius: 12))
            }
            
        }
        
        /*
        Text("\(counter)")
            .font(.system(size: 100))
            .animation(.easeInOut(duration: 0.3), value: counter)
        
        HStack {
            Button("Decrease") {
                counter-=1
            }
            
            Button("Increase") {
                counter+=1
            }
        }
         */
    }
}





#Preview {
    DrinkSizeSwitcher()
}
