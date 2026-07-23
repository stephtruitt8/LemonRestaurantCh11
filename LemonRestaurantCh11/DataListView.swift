//
//  DataListView.swift
//  LemonRestaurantCh11
//
//  Created by Stephen Truitt on 7/22/26.
//

import SwiftUI

struct DataListView: View {
    var students = ["Christian", "Brittany", "Steph", "Leo"]
    
    var movies = ["Napolean Dynamite", "Rush Hour", "Scott Pilgrim", "Sucker Punch", "Backrooms"]
    
    var body: some View {
        List {
            Section(header: Text("Students")) {
                ForEach(students, id: \.self) { student in
                    Text(student)
                }
            }
            Section(header: Text("Movies")) {
                ForEach(movies, id: \.self) { movie in
                    Text(movie)
                }
            }
            
        }
        
    }
}

#Preview {
    DataListView()
}
