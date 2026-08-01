/*
 ------ CLASS -------
 Reference type used to define a custom data model that groups together properties and methods.
 It acts as a blueprint for creating object(instances)
 
 -- Syntax --
 
 class ClassName {
    var propertyName1: DataType
    var propertyName2: DataType
 
    // Initializer
 Init(propertyName1: DataType, propertyName2: DataType) {
    self.propertyName1 = propertyName1
    self.propertyName2 = propertyName2
 }
 
 // Methods
 func methodName() -> ReturnType {
    // code here
 }

}
 
 // Creating an instance (object)
 let objectName = ClassName(property1: value1, property2: value2)
 
 
 */


print("\n-- Basic Class: Car--")

class Car {
    var brand: String
    var speed: Int
    
    init(brand:String, speed:Int) {
        self.brand = brand
        self.speed = speed
    }
    
    func accelerate() {
        speed += 10
    }

}

let myCar = Car(brand: "Toyota", speed: 50)
print("Car brand: ", myCar.brand)
print("Car speed: ", myCar.speed)

myCar.accelerate()
print("Car speed after accelerate: ", myCar.speed) // 60

//MARK: -

print("\n-- Class with method: Dog --")
class Dog {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func bark() {
        print("\(name): Woof!")
    }
}

// Create instances
let dog1 = Dog(name: "Scooby", age: 8)
let dog2 = Dog(name: "Scrappy", age: 2)

dog1.bark()
dog2.bark()

// MARK: -

print("\n-- Reference Type Behavior --")
class Weapon {
    var name: String
    var attack: Int
    
    init(name: String, attack: Int) {
        self.name = name
        self.attack = attack
    }
    
    func upgrade() {
        attack += 10
    }
}

// One weapon in the world
let sharedSword = Weapon(name: "Dragon Sword", attack: 60)

// Two Characters Equip the SAME sword (reference type)
let knightWeapon = sharedSword
let thiefWeapon =  sharedSword

print("Kinght attack: ", knightWeapon.attack) // 50
print("Thief attack: ", thiefWeapon.attack) // 50

// Knight upgrade the sword
knightWeapon.upgrade() // +10

print("Thief attack after upgrade: ", thiefWeapon.attack) // 70
print("Knight upgrade the sword to: ", knightWeapon.attack) // 70
print("SharedSword attack after upgrade: ", sharedSword.attack) // 70


/*
 
 Struct vs Class
 
 Struct are VALUE types
    - When you copy a struct, you get a new independent copy.
 
 Class are REFERENCE type
    - When you copy a class instance..  both variables point to the same object.
    - Classes support inheritance
        class Animal ()
        class Dog ()
    - Use Class when:
        - You need inheritance
 
 
 */
