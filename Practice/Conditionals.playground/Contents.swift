import UIKit

// If - ELSE if - ELSE
/*
 | --- SYNTAX --- |

if condition1 {
    this block runs if condition1 is true
}else if condition2 {
    this block runs if the condition2 is true
}else{
    this block runs if none of the above conditions are true
}
*/


// |--- Example 1 ---|
var guest: Int = 7
let capacity:Int = 10

if guest <= capacity {
    print("Over capacity")
}else{
    print("We can seat this party")
}

//|--- example 2 ---|
let rating = 2.0
if rating >= 4.5 {
    print("Excellent")
}else if rating >= 3.5 {
    print("Good")
}else{
    print("Needs Improvements")
}

//|--- Example 3 ---|
let isOpen = true
let hasOutdoorSeating = true

if isOpen && hasOutdoorSeating {
    print("Open with outdoor seating")
}else if isOpen && !hasOutdoorSeating {
    print("Open inddor only")
}else{
    print("Closed")
}

//|--- Example 4 ---|
let userName = "Ken"

if userName == "Ken"{
    print("Welcome, Ken!")
}else{
    print("Unknown user")
}


//|--- Example 5: ternary ---|
let price = 12.0
let label = price > 10 ? "Premium" : "Regular"

// |--- Mini Challenge #1 ----|

let children = 0
let groupSize = 8

if groupSize > 8 && children > 0 {
    print("large group - call manager")
    print("Offer kids menu")
}




var vipUser = false
let regularGuest = true

if vipUser {
    print("Welcome, VIP Guest")
}else{
    print("Welcome mortal user")
}


