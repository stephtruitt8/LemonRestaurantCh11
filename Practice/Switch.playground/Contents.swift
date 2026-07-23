/*
 
 ---- Switch Statement ----
 lets you compare one value against multiple possible cases and run different code depending on which case matches. It's used when you want to check many conditions in a clean, organized way.
 
 -- syntax --
 
 switch value {
 case patterns1:
    // code to run if value matches pattern1
 
 case pattern2:
    // code to run if value matches pattern2
 
 default:
    // code to run if no cases match
 
 }
 
    
 */

print("----- SWITCH STATEMENT -----")

print("\n-- Number (Int) --")
let number:Int = 11

switch number {
case 1:
    print("Number One")
case 2:
    print("Number Two")
default:
    print("Other Number")
}

print("\n-- Number (Int) --")
let position:Int = 4

switch position {
case 1:
    print("1st Place!")
case 2:
    print("2nd Place!")
case 3:
    print("3rd Place!")
default:
    print("You placed \(position)th.")
}

print("\n-- Text (String), Matching Multiple values")
let grade:String = "F"

switch grade {
case "A":
    print("Good Job!")
case "B":
    print("Not Bad!")
case "C":
    print("You Passed!")
default:
    print("Try again")
}

print("\n-- Numbers(Int), using range --")
let score:Int = 75

switch score {
case 90...100:
    print("A")
case 80..<90:
    print("B")
case 70..<80:
    print("C")
case 60..<70:
    print("D")
default:
    print("F")
}

print("\n-- Boolean (Bool) --")
let isVip:Bool = true

switch isVip {
case true:
    print("VIP User")
case false:
    print("Standard Guest")
    
//default :
//    print("Unknown") (Never will be printed)
}

print("\n-- Using where clause --")
let age:Int = 18

switch age {
case let x where x > 18:
    print("Child")
    
case let x where x < 18:
    print("Teenager")
    
default:
    print("Adult")
}


/*
 --Mini!--
 
 -Varible is Day
 - use switch to print
    -Weekend for sat/sun
    -weekday for mon-fri
    -Invalid day for anything else
 
    
 */


print("\n-- Days Challenge --")
let day:String = "Friday"

switch day {
case "Saturday", "Sunday":
    print("Weekend")
case "Monday", "Tuesday", "Wednesday", "Thursday", "Friday":
    print("Weekday")
default:
    print("Invalid Day")
}


print("\n-- Temp Challenge --")
let temperature:Int = 20

switch temperature {
case 0...59:
    print("Cold")
case 60...79:
    print("Mild")
case 80...100:
    print("Hot")
default:
    print("Out of Range")
}
