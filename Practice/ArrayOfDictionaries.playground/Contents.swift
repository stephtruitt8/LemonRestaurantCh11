/*
 -- Array Syntax --
 var/let arrayName:[dataType] = [value1, value2, value3, ...]
 
 -- Dictionary syntax --
 
 var/let dictionaryName:[keyType:valueType] = [
    key1:value1,
    key2:value2,
    key3:value,
    ...
 ]
 
 -- for-in loop syntax --
 for loopVariable in collection{
    // code to repeat
 }
 
 -- forEach Syntax --
 collection.forEach { element in
    // code to repeat
 }
 
 */

print("-- ARRAY OF DICTIONARIES --")

print("\n-- Menu Items--")
let menuDishes:[[String: String]] = [
    ["name": "Pie", "price": "12"],
    ["name": "Pancakes"],
    ["name": "Cake", "price": "15"],
    ["name": "Chips", "price": "5"],
]

print("\n-- Looping throught menuDishes (for-in loop) --")
for dish in menuDishes {
    print(dish["name"] ?? "Unknown")
    print(dish["price"] ?? "Unknown price")
}

for dish in menuDishes {
    for (key, value) in dish {
        print(key, value)
    }
}

print("\n-- Looping through menuDishes Example 2 (for-in loop) --")
menuDishes.forEach { dish in
    dish.forEach { (name, value) in
        print(name, value)
    }
}

/* Mini! */

print("\n-- Mini! Dish with price higher than 10 --")

for dish in menuDishes {
    let price = Int(dish["price"] ?? "0")
    
    if price! > 10 {
        print(dish)
    }
    
}

// solution 2
for dish in menuDishes {
    let priceString = dish["price"] ?? "0"
    
    if let price = Int(priceString), price > 10 {
        print(dish["name"]!)
    }
}

let menuDrinks = [
    [
        "name": "Water",
        
    ],
    [
        "name": "Soda",
        "price": "4"
    ],
    [
       
        "price": "3"
    ],
    [
        "name": "Lemonade",
        "price": "5"
    ]
]

print("\n-- Mini! Detect missing fields --")
for menuDrink in menuDrinks {
    if menuDrink["name"] == nil || menuDrink["price"] == nil {
        print("Missing field in: \(menuDrink)")
    }
}

for drink in menuDrinks {
    if drink["name"] == nil {
        print("⚠️ Missing name in \(drink)")
    }
    if drink["price"] == nil {
        print("⚠️ Missing price in \(drink)")
    }
}


