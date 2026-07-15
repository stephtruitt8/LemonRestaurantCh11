//
//  Bill CalculatorView.swift
//  LemonRestaurantCh11
//
//  Created by Stephen Truitt on 7/13/26.
//

import SwiftUI

struct BillCalculatorView: View {
    
    // Constants
    let resturantName: String = "Lemonrista"
    let adultPrice: Double = 10.00
    let childPrice: Double = 5.00
    let taxRate: Double = 0.08
    
    // state vars
    @State private var adults: Int = 2
    @State private var children: Int = 0
    @State private var hasDiscount: Bool = false

    //functions
    
    // 1. base subtotal
    func caclulateSubtotal(adults:Int,children:Int) -> Double {
        return Double(adults) * adultPrice + Double(children) *
            childPrice
    
    }
    
    // 2. calculate the discount
    func calculateDiscount(subtotal:Double, hasDiscount:Bool) -> Double{
        if !hasDiscount {
            return 0.0
        }
        if subtotal >= 100 {
            return subtotal * 0.20
        }else {
            return subtotal * 0.10
        }
    }
        
    // 3. Tax calculation
    func calculateTax(amount:Double) -> Double {
            return amount * taxRate
        }
    // ex. Perpersonpay?
    func calculatePerPerson(amount:Double,adults:Int,children:Int) -> Double {
        let totalPeople = Double(adults + children)
        return amount / totalPeople
        
    }
    
    // 4. grand total calculation
    func calculateGrandTotal(subtotal:Double,tax:Double,discount:Double) -> Double {
        return subtotal + tax - discount
    }

    var body: some View {
        Form{
            // Header
            Section{
                    HStack{
                        
                        
                        Image(systemName: "fork.knife")
                            .foregroundStyle(.green)
                            .font(.title)
                        
                        
                        VStack(alignment: .leading){
                            
                            Text("Bill Calculator")
                                .font(.title2)
                                .bold()
                            
                            
                            Text(resturantName)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                }
            
            
            //Inputs
            Section{
                // 2 steppers (adults, children)
                
                Stepper("Adult: \(adults)",value: $adults, in: 1...20)
                    .bold()
                
                Stepper("Children: \(children)",value: $children, in: 0...20)
                    .bold()
                
                Toggle("Apply discount", isOn: $hasDiscount)
            }
            
            // breakdown
            Section(header:Text("Breakdown")){
                
                let subtotal = caclulateSubtotal(adults: adults, children: children )
                let discount = calculateDiscount(subtotal: subtotal, hasDiscount: hasDiscount)
                let afterDiscount = subtotal - discount
                let tax = calculateTax(amount:afterDiscount)
                let grandTotal = afterDiscount + tax
                
                HStack {
                    Text("Subtotal")
                    Spacer()
                    Text("\(subtotal)") // calculate
                }
                
                if hasDiscount {
                    HStack {
                        Text("Discount")
                        Spacer()
                        Text("\(discount)") //calculate
                    }
                }
                
                HStack{
                    Text("Tax 8%")
                    Spacer()
                    Text("\(tax)") //calculate
                }
                
                Divider()
                HStack{
                    Text("Total")
                    Spacer()
                    Text("$\(grandTotal)")
                }
                
            }
            
            Section(header:Text("Per Person")){
                
                HStack {
                    Text("People")
                        .bold()
                    Spacer()
                    Text("\(adults)")
                    
                    
                }
                
                HStack {
                    Text("Each pay")
                        .bold()
                    Spacer()
//                    Text("\(calculatePerPerson(amount: <#Double#>, adults: adults, children: children, hasDiscount: hasDiscount))")
                   
                }
                
            }
                
            }
        }
        
        
        
    }


#Preview {
    NavigationStack {
        BillCalculatorView()
    }
    
}
