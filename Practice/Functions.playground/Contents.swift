import UIKit

// functions

/*
 
 syntax
 
 func functionName(parameter1: Type, parameter2: Type) -> ReturnType {
        // function body
        // logic goes here
        return value
 
 }
 
 */


// Example 1 - no param, no return
func printWelcome(){
    print("Hello cohort #11")
}

printWelcome()

// Example 2 - 1 param
func greet(person: String) -> String {
    let greeting = "Hello " + person + "!"
    return greeting
}

let message = greet(person: "Brittany")
print(message)

// Example 3 - 2 Params
func add(number1:Int,number2:Int) -> Int {
    return number1 + number2
}

var result = add(number1:334,number2:654)
print(result)

// Example 4 - unamed params
func mult(_ number1:Int,_ number2:Int) -> Int {
    return number1 * number2
}

 result = mult(100,50)
print(result)

    /* Mini Chal */

func welcomeStudent(name: String) -> String {
    return "Welcome, \(name)! Ready to learn Swift?"
    
    
}
print(welcomeStudent(name: "Stephen"))


    /* Mini Chal 2*/

func deliveryStatus(minutes: Int) -> String {
    if minutes == 0 {
        return "Your order is ready"
    }else if minutes <= 15 {
        return "Almost There - Estimated time: X Minutes."
    }else if minutes <= 45 {
        return "On its way! -  Estimated time: X Minutes"
    }else if minutes > 45 {
        return "Running late, Estimated time: X Minutes"
    }else{
        return "invalid option"
    }
}
    
    print(deliveryStatus(minutes: 0))
    print(deliveryStatus(minutes: 15))
    print(deliveryStatus(minutes: 45))
    print(deliveryStatus(minutes: 60))
    
    
    /* Mini Chal3 */
    
    func serviceFee(total: Double) -> Double {
        if total < 20 {
            return 0
        }else if total < 50 {
            return total * 0.10
        }else if total < 100 {
            return total * 0.15
        }else {
            return total * 0.20
        }
    }
    
    func finalBill(total: Double) -> String {
        let fee = serviceFee(total: total)
        let grandTotal = total + fee
        return "Bill: $\(String(format: "%.2f", total)) + fee: $\(String(format: "%.2f", fee)) $\(String(format: "%.2f", grandTotal))"
    }
    
    print(finalBill(total: 15.0))
    print(finalBill(total: 35.0))
    print(finalBill(total: 75.0))
    print(finalBill(total: 120.0))
    

