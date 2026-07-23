/*
 ------ ForEach ------
 Method available on any sequence in Swift(ranges, strings and arrays).
 It lets you run a block of code for every element in that sequence.
 It works similarly to a for-in loop, but uses a closure instead of a loop syntax.
 
 -- Syntax --
 sequence.forEach { element in
 // do something with element
 }
 
 */

print("\n-- forEach --")

print("\n-- forEach with a range--")
(1...5).forEach { number /* loopVariable*/ in
    print(number)
}

print("\n-- forEach with a half-open range --")
(0..<4).forEach { index in
    print("Index: \(index)")
}


print("\n-- forEach ignoring the value --")

(1...3).forEach { _ in
    print("Hello")
}



print("\n-- forEach + array --")
var students = ["Steph", "Brittany", "Christian", "Leo"] //array

students.forEach { student in
    print(student)
}

print("\n-- forEach + array 2--")

var dishes = ["pizza", "pasta", "poultry", "rice", "lasagna"]

dishes.forEach { dish in
    print(dish)
}

