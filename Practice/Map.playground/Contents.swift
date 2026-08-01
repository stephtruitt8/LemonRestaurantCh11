/*
 ------ FILTER ------
 
 Array method that transforms each element of a collection and returns a new array containing the tranformed value.
 It does not modify the original value.
 
 -- Syntax --
 
 collection.map { $0 }
 
 
 */

print("\n-- Map: Numbers (Double each number) --")

let numbers = [1, 2, 3, 4, 5, 11]

let doubled = numbers.map { $0 * 2 } // [2, 4, 6, ...]
print(doubled)

// MARK: -

let desserts = ["Cake", "Ice Cream", "Pie"]
let emojiMenu = desserts.map {"  🍰 \($0) is yummy!" }
print(desserts)
print(emojiMenu)


// MARK: -

print("\n-- Map: Strings (Capitalize Names) --")

let names = ["Brittany", "Christian", "Stephen", "Leo"]
let uppercasedNames = names.map { $0.uppercased()}
print(uppercasedNames)
