/*
------ DICTIONARY --------
 Unordered collection that stores key-value pairs.
 - Each key must be unique.
 - Each key maps to a value
 - Keys and values can be any type, but all keys must share the same type, and all values must share the same type.
 
 -- Syntax --
 var/let dictionaryName:[keyType:valueType] = [
    key1:value1,
    key2:value2,
    key3:value3,
    ...
 ]
 
 */

print("----Dictionary----")

print("\n-- String values --")
let studentInfomation:[String:String] = [
    "firstName": "John",
    "lastName": "Snow",
    "age": "25",
    "email": "john@got.com"
]

print(studentInfomation)

print("\n-- Accessing values--")
print(studentInfomation["firstName"] ?? "Not Found")
print(studentInfomation["age"]!)
print("keys: \(studentInfomation.keys)")



print("\n-- Looping through studentInfomation (for loop) --")
for (key, value) in studentInfomation {
    print("\(key): \(value)")
}


print("\n-- Looping through studentInfomation (forEach) --")

studentInfomation.forEach { (key, value) in
    print("\(key): \(value)")
}

print("\n-- String Values --")
let courseInfomation:[String:String] = [
    "courseName": "iOS Development",
    "courseCode": "MDI1-102",
    "Schedule": "Mon-Thu 5 PM"
]

print(courseInfomation["courseName"] ?? "Not Found")
print(courseInfomation["Schedule"]!)
print(courseInfomation["instructor"] ?? "Instructor not found")

print("\n--  Looping through courseInfomation (for-in loop) --")

for (key, value) in courseInfomation {
    print("\(key): \(value)")
}

print("\n--  Looping through courseInfomation (forEach) --")

courseInfomation.forEach { (key, value) in
    print("\(key): \(value)")
}

print("\n-- Int values --")
var servingsAvailable:[String: Int] = [
    "Pizza": 12,
    "Salad": 8,
    "Soup": 24
]

print(servingsAvailable)

print("\n-- Add a new item --")
servingsAvailable["Pasta"] = 10 //add item
print(servingsAvailable)

print("\n-- Update an existing item --")

servingsAvailable["Salad"] = 10
print(servingsAvailable)

print("\n-- Remove an existing item--")
servingsAvailable["Soup"] = nil //remove
print(servingsAvailable)

print("Today we have \(servingsAvailable.count) dishes in stock")

print("-- Get all keys --")
servingsAvailable.keys
print(servingsAvailable.keys)

print("-- Get all values --")
servingsAvailable.values
print(servingsAvailable.values)

print("\n-- Double Values --")
var dishPrices:[String: Double] = [
    "Pizza": 12.99,
    "Salad": 5.99,
    "Soup": 4.99
]

print(dishPrices["Pizza"] ?? "Dish not found")

/* Mini! */


var ingredients:[String:Int] = [
    "Tomato": 888,
    "Cheese": 16,
    "Garlic": 12,
    "Potato": 16,
    "Mushroom": 10,
    "Spinach": 2,
]

print(ingredients.keys)

ingredients["Onions"] = 8
ingredients["Carrots"] = 24
ingredients["Lettuce"] = 12

ingredients["Spinach"] = 3

print("-- All Ingredients --")
      ingredients.forEach { (key, value) in
        print("\(key): \(value)")
}



