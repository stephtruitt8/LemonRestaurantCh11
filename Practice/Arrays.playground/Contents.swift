/*
 ------ ARRAY ------
 Ordered collection that stores multiple values of the same type in a single Variable.
    - Value are store in a specific order
    - Each Value has an index starting at 0
 
 -- Syntax --
 var/let arrayName = [value1, value2, value3, ...]
 
 */

print("--- Arrays ---")

print("\n-- Basic Array (String) --")
var dishes = ["Pasta", "Pizza", "Risotto"]

print(dishes)
print(dishes[2])
print(dishes[1])
print(dishes[0])
print(dishes.count)

print("\n-- Add an element to the end of the array (Append) --")
dishes.append("Salad")
print(dishes)

print("\n-- Remove element of the array (Remove) --")
dishes.remove(at: 1)
print(dishes)


print("\n-- Add an element at a specific index --")
dishes.insert("Pasta", at: 3)
print(dishes)

/*
 String -> "hello cohort 11"
 Int -> 3
 Double -> 3.14
 Bool -> false
*/

print("\n--- Price Arrays (Double) ---")
var prices = [9.99, 10.58, 6.00]
print(prices[2])

let total = prices[0] + prices[1]
print("Total for two dishes \(total)")

/* Mini 1 */

var desserts = ["Ice cream", "Brownie", "Cake"]
print(desserts)
print(desserts.count)
