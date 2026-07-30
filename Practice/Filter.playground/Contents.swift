/*
 ----- FILTER -----
 Array method that creates a new array containing only elemenets that satisfy a given condition.
 Filter keeps only the items that returns true.
 It does not modify the original array, it returns a new one.
 
 -- Syntax --
 collection.filter { $0 condition }
 
 */

print("\n-- FILTER --")

print("\n-- Filter: Numbers (Even Number) --")
let numbers = [10, 20, 30, 40, 50, 60]
let evenNumbers = numbers.filter { $0 % 2 == 0 }
print(evenNumbers)

print("\n-- Filter: Number (Mulitple of 3) --")
let multiplesOfThree = numbers.filter { $0 % 3 == 0 }
print(multiplesOfThree)

print("\n-- Filter: Numver (Greater than 5) --")
let values = [2,41, 16, 1, 35, 11]
let bigValues = values.filter { $0 > 5 }
print(bigValues)

for value in values {
    var bigValues:[Int] = []
    if value > 5 {
        bigValues.append(value)
        print(values)
    }
}

print(bigValues)

print("\n-- Filter: Dictionary (Names with more than 5 letters --")
let students = [
    "Stephen": 29,
    "Christian": 11,
    "Brittany": 26,
    "Leo": 32
    
]

let longNames = students.filter {$0.key.count > 5}
print(longNames)

print("\n-- Filter: Dictionary (Dishes price < 10) --")
let dishes = [
    "Pizza": 10.50,
    "Pasta": 7.50,
    "Hamburger": 10.99,
    "Hot dog": 4.99,
    "Butffalo Wings": 13.99
]

let cheapDishes = dishes.filter { $0.value < 10 }
print(cheapDishes)

print("\n-- --")

let vegetarianMenu = ["Veggie Salad", "Steak", "Fruit Bowl", "Ceasar Salad"]

let filteredMenu = vegetarianMenu.filter { $0.contains("Veggie") || $0.contains("Fruit") }
print(filteredMenu)
