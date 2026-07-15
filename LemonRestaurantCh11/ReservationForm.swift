//
//  ReservationForm.swift
//  LemonRestaurantCh11
//
//  Created by Stephen Truitt on 7/11/26.
//

import SwiftUI

struct ReservationForm: View {
    let resturantName: String = "Lemonrista"
    let maxGuests: Int = 12
    let occasions: [String] = ["Anniversary", "Birthday", "Other"]
    
    // State Variables -->
    // if this value changes, update the UI
    
    @State private var userName: String = ""
    @State private var guestCount: Int = 1
    @State private var userPhone: String = ""
    @State private var previewText: String = ""
    @State private var children = 0
    @State private var notes: String = ""
    @State private var showMessage: Bool = true
    @State private var guestSeating: Bool = false
    @State private var selectedOccasion = ""
    
    var nameFieldColor: Color {
        if userName.isEmpty {
            return.red
        }else if userName.count < 3 {
            return .orange
        }else{
            return .black
        }
    }
    
    var occasionMessage: String {
        if selectedOccasion.isEmpty {
            return "Please select an occasion"
        }else if occasions.contains("Anniversary"){
            return "Anniversary! Check, \(userName)"
        }else if occasions.contains("Birthday"){
            return "Happy birthday! \(userName)"
        }else if occasions.contains("Other"){
            return "If Other, Please contact us!"
        }else {
            return "No occasion selected"
        }
    }
    
    var reservationStatus: String {
        if userName.isEmpty && userPhone.isEmpty{
            return "Fill in your name and phone to continue"
        }else if userName.isEmpty{
            return "Need a name to continue"
        }else if userPhone.isEmpty{
            return "Need a phone number to continue"
        }else{
            return "Ready to Preview!"
        }
    }
    
    
    
    var body: some View {
        NavigationStack {
            
            
            Form {
                //header
                Section{
                    HStack{
                        
                        
                        Image(systemName: "fork.knife")
                            .foregroundStyle(.green)
                            .font(.title)
                        
                        
                        VStack(alignment: .leading){
                            
                            Text("Little Lemon")
                                .font(.title2)
                                .bold()
                            
                            
                            Text("Reservation form")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                }
                
                
                //reservation details
                
                
                Section(header: Text("Reservation Details")){
                    TextField("Name", text: $userName)
                        .textInputAutocapitalization(.words)
                        .autocorrectionDisabled(true)
                        .padding(6)
                        .background(nameFieldColor.opacity(0.3))
                        .cornerRadius(5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .       stroke(nameFieldColor, lineWidth:0.5))
                    // $ -> this view can READ and WRITE the value
                    
                    
                    if userName.isEmpty {
                        Text("Please enter a name")
                            .font(.footnote)
                            .foregroundColor(.red)
                    }
                    
                    Stepper("Number of Guests:\(guestCount)",value: $guestCount, in: 1...maxGuests)
                    
                    if guestCount >= 8 {
                        Text("Large Group - We will do our best to accommodate")
                            .font(.footnote)
                            .foregroundColor(.orange)
                        
                    }
                    
                    
                    if guestCount == maxGuests {
                        Text("Can't add more guests")
                            .font(.footnote)
                            .foregroundColor(.red)
                    }
                }
                
                Section(header:Text("Optional")){
                    TextField("Notes", text: $notes)
                    Stepper("Children: \(children)", value:
                                $children, in: 0...10)
                    
                    Picker("Choose an Occasion", selection: $selectedOccasion) {
                        
                        
                    }
                    Toggle("Show an special text", isOn:
                            $showMessage)
                    if showMessage {
                        Text("Discount %")
                            .foregroundStyle(.green)
                    }
                    
                    }
                    Toggle("Outdoor Seating?", isOn:
                            $showMessage)
                    if showMessage {
                        Text("Yes to Outside")
                            .foregroundStyle(.green)
                    }
                }
                
                
                
                
                Section(header: Text("Actions")){
                    Button("Preview reservation details"){
                        previewText =
                        """
                        Name: \(userName)
                        Number of guests: \(guestCount)
                        Contact: \(userPhone)
                        """
                    }.disabled(userName.isEmpty ||
                               userPhone.isEmpty)
                    
                }
                
                
                //contact
                Section(header: Text("Contact Infomation")){
                    TextField("Phone", text: $userPhone)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled(true)
                        .keyboardType(.numberPad)
                    
                    // The Phone number is required
                    
                    if userPhone.isEmpty {
                        Text("Phone Number is Required")
                            .font(.footnote)
                            .foregroundColor(.red)
                    }else if userPhone.count != 10 {
                        Text("Invalid Phone Number")
                            .font(.footnote)
                            .foregroundColor(.orange)
                    }else{
                        
                    }
                    
                }
                
                
                //actions
                Section(header: Text("Actions")){
                    Text(reservationStatus)
                        .font(.footnote)
                        .foregroundStyle(.orange)
                    Button("Preview reservation details"){
                        previewText =
                        """
                        Name: \(userName)
                        Guests: \(guestCount)
                        Phone: \(userPhone)
                        """
                    }
                }
                
                
                //preview
                
                
                Section(header: Text("Preview")){
                    Text(previewText)
                        .font(.footnote)
                        .foregroundStyle(.secondary)
                        .padding(.vertical, 4)
                        .textSelection(.enabled)
                }
                
            }.navigationTitle("Reservation Form")
            
            
        }
        
    }


#Preview {
    NavigationStack {
        ReservationForm()
    }
    
}
