import UIKit

// variables var
// constants let

var restaurantName = "Little Lemon"
print("Welcome to \(restaurantName)")

restaurantName = "Lemonrista"
print("Now we are called \(restaurantName)")

// constants cannot change
let city = "San Francisco"
//city = "Chicago" //error: cannot assign to value
print("Our restuarant is located in \(city)")

// Strings
var specialDish = "Pasta Basil"

//Integers
var availableSeats = 120

//Doubles
var dishPrice = 19.95

//Boolean
var isOpen = true

print("Today's specials: \(specialDish) for \(dishPrice)")

//Challenge #1

var numberOfTables = 10
var ownerName = "John"

print("Little Lemon has \(numberOfTables) tables and is owned by \(ownerName)")

//Challenge #2

var tuesdaySpecial = "Mini Tacos"

var tuesdaySpecialPrice = 4.50


// data types
// we can also explicitly define the types
var anotherDish: String = "Pasta"
var tableCount: Int = 10
var price: Double = 19.95
var openStatus: Bool = true


// use math operators
let pastaPrice: Double = 1.50
let saladPrice: Double = 2.00
let total = pastaPrice + saladPrice
print("The Total is: \(total)")

//Add a 15% tip to the total and print the final amount

var tip: Double = total * 0.15
var totalWithTip: Double = total + tip
print("The total with tip is: \(totalWithTip)")





