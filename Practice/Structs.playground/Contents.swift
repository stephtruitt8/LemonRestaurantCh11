/*
 ---- Struct ----
 
 Custom data type that lets you group related values and behaviours together.
 Struct is like a blueprint.
 
 --Syntax--
 
 struct StructName {
    var/let propertyName1: ElementType
    var/let propertyName2: ElementType
 
    func functionName() {
        //function body
    }
 }
 
 -- Creating an instance of a struct --
 let/var instanceName = StructName(propertyName1:value1, propertyName2: value2)
 
 */


struct MenuItem {
    var name: String
    var price: Double
    var image: String
    
    func printInfomation() {
        print("Dish: \(name), Price: \(price), Image: \(image)")
    }
}

print("\n-- --")

let pizza = MenuItem(name: "Pizza", price: 10.99, image: "pizza.png")
print(pizza)


print("\n-- Accessing properties --")

print(pizza.name)
print(pizza.price)
print(pizza.image)

pizza.printInfomation()

let pasta = MenuItem(name: "Pasta", price: 8.99, image: "pasta.png")
print(pasta.price)
print(pasta.image)
print(pasta.name)
pasta.printInfomation()

print("\n-- MINI! --")

let meatballs = MenuItem(name: "Meatballs", price: 12.99, image: "meatballs.png")
print(meatballs.price)
print(meatballs.image)
print(meatballs.name)
meatballs.printInfomation()

// New Instance

struct Customer {
    var name: String
    var email: String
    var visits: Int
    
    func loyaltyStatus() {
        if visits > 3 {
            print("\(name) is a ⭐️ Loyalty Member")
        } else {
            print("\(name) is a Regular Customer")
        }
    }
}

let john = Customer(name: "John", email: "john@email.com", visits: 4)
let jane = Customer(name: "Jane", email: "jane@email.com", visits: 1)

let bob = Customer(name: "Bob", email: "bob@email.com", visits: 10)
let alice = Customer(name: "Alice", email: "alice@email.com", visits: 0)
john.loyaltyStatus()
jane.loyaltyStatus()
bob.loyaltyStatus()
alice.loyaltyStatus()

/* Mini 2! */


print("\n-- Book Challenge --")


struct Book {
    var title: String
    var author: String
    var genre: String
    var price: Double
    var pages: Int
    
    func printDetails(){
        if pages > 100 {
            print("\(title) by \(author) is a \(genre) book that has more than 100 pages")
        } else {
            print("\(title) by \(author) is a \(genre) book that costs $\(price) (ish)")
        }
    }
}

let theCatcherInTheRye = Book(title: "The Catcher in the Rye", author: "J.D Salinger", genre: "Fiction", price: 10.99, pages: 200)

let harryPotter = Book(title: "Harry Potter", author: "J.K Rowling", genre: "Fantasy", price: 10.99, pages: 300)

let scottPilgrim = Book(title: "Scott Pilgrim vs. the World", author: "Derrick Allred", genre: "Comics", price: 10.99, pages: 100)

let hatchet = Book(title: "Hatchet", author: "Gary Paulsen", genre: "Non-Fiction", price: 10.99, pages: 100)

theCatcherInTheRye.printDetails()
harryPotter.printDetails()
scottPilgrim.printDetails()
hatchet.printDetails()


print("\n-- Drink Struct --")
struct Drink {
    var name: String
    var size: String
    var price: Double
    var isCold: Bool // true or false
    
    func printDetails() {
        let type = isCold == true ? "Cold drink" : "Hot drink" //instance: True or False
        print("Drink: \(name), Size: \(size), Price: \(price), - \(type)")
    }
}

// Instances
let coffee = Drink(name:"Coffee", size:"Medium", price: 6.75, isCold:false)
let tea = Drink(name: "Iced Tea", size: "Large", price: 7.00, isCold: true)
let juice = Drink(name: "Orange Juice", size: "Small", price: 5.00, isCold: true)

coffee.printDetails()
tea.printDetails()
juice.printDetails()



// Session 2

print("\n-- Movie Struct --")

struct Movie {
    var title: String
    var director: String
    var year: Int
    var genre: String? //Optional property
    
    func printSummary() {
        print("\(title) \(year) directed by \(director), \(genre ?? "No genre") ")
    }
}

// Creating Instances
let interstellar = Movie(
    title:"Interstellar",
    director:"Christopher Nolan",
    year: 2014,
    genre: "Action"
)

let darkKnight = Movie(
    title:"The Dark Knight",
    director: "Christopher Nolan",
    year: 2008,
    genre: "Action"
)

let toyStory = Movie(
    title: "Toy Story",
    director: "John Lasseter",
    year: 1995,
    genre: "Kids"
)

let backRooms = Movie(
    title: "Backrooms",
    director: "Kane Parsons",
    year: 2026,
    genre: "Horror"
)

let obsession = Movie(
    title: "Obsession",
    director: "Curry Baker",
    year: 2026,
    genre: "Horror"
)
/* let rushHour = Movie(
    title: "Rush Hour",
    director: "Brett Ratner",
    year: 1998,
    genre: "Comedy"
) */

interstellar.printSummary()
darkKnight.printSummary()
toyStory.printSummary()
backRooms.printSummary()
obsession.printSummary()

// Array of Structs
var movies: [Movie] = [interstellar, darkKnight, toyStory, backRooms, obsession]

print("\n-- Loop through movies array --")
for movie in movies {
    // logic
    movie.printSummary()
}


print("\n-- forEach --")
movies.forEach { movie in
    // code to repeat
    movie.printSummary()
}


/* Mini!! */

var rushHour = Movie(title: "Rush Hour", director: "Brett Ratner", year: 1998, genre: "Comedy")
movies.append(rushHour)

print("\n-- Movies After 2000 --")
movies.forEach { movie in
    if movie.year > 2000 {
        movie.printSummary()
    }
    //movie.printSummary(if: movie.year > 2000)
}

