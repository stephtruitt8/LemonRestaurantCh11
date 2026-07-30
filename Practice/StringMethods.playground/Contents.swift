let greeting = "Hello World"

// HELLO WORLD

print(greeting.uppercased())
// hello worls
print(greeting.lowercased())
print(greeting.capitalized)
//Hello World

let spaced = " Swift "
spaced.trimmingCharacters(in: .whitespaces)

let phrase = "Hello World"
phrase.replacingOccurrences(of: "World", with: "Swift")

// Searching
let text = "Swift is fun"
print(text.contains("fun"))
print(text.hasPrefix("Swift"))
print(text.hasSuffix("fun"))

// Substrings
let letters = "abcdef"
print(letters.prefix(3)) // abc
print(letters.suffix(2)) // er
print(letters.dropFirst()) // bcdef
print(letters.dropLast()) //abcde
print("a,b,c" .split(separator: ","))

// Counting & Checking
print("hello".count) // 5
print("".isEmpty)
let numberString = "123"
print(Int(numberString) ?? 0) // Coalescing operator

let piString = "3.14" // String
print(Double(piString) ?? 0.0)

// Extras
let word = "Swift"
print(String(word.reversed()))
