//
//  AboutView.swift
//  LemonRestaurantCh11
//
//  Created by Stephen Truitt on 7/9/26.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack  {
            
            Text("About Lemonrista")
                .font(.largeTitle)
                .foregroundStyle(Color.yellow)
                .bold()
                .padding()
            
            Text("LemonRista is a cozy restuarant in the heart of downtown Cleveland, Ohio. We serve up delicious, homemade meals in a welcoming, relaxed atmosphere.")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()
            
            }
        
        HStack {
            
            Image(systemName: "fork.knife")
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundColor(.yellow)
                .padding(10)
    
            Image(systemName: "leaf")
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundColor(.green)
                .padding(10)
            
            Image(systemName: "map")
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundColor(.blue)
                .padding(10)
                
        }
        .padding()
        
        
    }
}

#Preview {
    AboutView()
}
